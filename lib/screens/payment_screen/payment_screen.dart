import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_event.dart';
import 'package:online_app/screens/payment_screen/bloc/payment_bloc/payment_bloc_state.dart';
import 'package:online_app/screens/payment_screen/widgets/add_new_card_sheet.dart';
import 'package:online_app/screens/payment_screen/widgets/add_new_credit_card.dart';
import 'package:online_app/screens/payment_screen/widgets/credit_card_item_tile.dart';
import 'package:online_app/screens/payment_screen/widgets/enter_cvv_code_sheet.dart';
import 'package:online_app/screens/payment_screen/widgets/enter_payment_password_sheet.dart';
import 'package:online_app/services/strapi_api_service/strapi_api_service.dart';
import 'package:online_app/utils/extensions.dart';
import 'package:online_app/widgets/custom_filled_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaymentScreen extends StatefulWidget {
  final String courseId;

  const PaymentScreen({super.key, required this.courseId});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  void _back() {
    context.pop();
  }

  @override
  void initState() {
    super.initState();
    context.read<HomeScreenBloc>().add(
          const LoadUserHomeScreenBlocEvent(),
        );
  }

  void _showAddNewCreditCardBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (bottomSheetContext) {
        return const AddNewCardSheet();
      },
    );
  }

  void _onPuchasePressed(
    String cardNumber,
    String expMonth,
    String expYear,
    String courseID,
    String summ,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (bottomSheetContext) {
        return EnterCvvCodeSheet(
          cardNumber: cardNumber,
          expMonth: expMonth,
          expYear: expYear,
          courseID: courseID,
          summ: summ,
        );
      },
    );
  }

  void _enterPaymentPassword(
    String cardNumber,
    String expMonth,
    String expYear,
    String courseID,
    String summ,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (bottomSheetContext) {
        return EnterPaymentPasswordSheet(
          showCvvBottomSheet: () => _onPuchasePressed( cardNumber,
             expMonth,
             expYear,
             courseID,
             summ,),
        );
      },
    );
  }

  final _controller = PageController();
  int currentIndex = 0;
  final strapi = StrapiApiService();

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentBloc, PaymentBlocState>(
      listener: (context, state) {
        if (state.addingCardStatus == CreditCardAddingStatus.success) {
          context.read<HomeScreenBloc>().add(
                const LoadUserHomeScreenBlocEvent(),
              );
          BotToast.cleanAll();
        }
      },
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: GestureDetector(
                onTap: _back,
                child: SvgPicture.asset(
                  Assets.icons.arrowBack,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context)
                        .extension<AppColorsModel>()!
                        .mainTextColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 200.0,
                    child: PageView.builder(
                      itemCount: (state.userInfo?.creditCards.length ?? 0) + 1,
                      controller: _controller,
                      onPageChanged: (value) {
                        setState(
                          () {
                            currentIndex = value;
                          },
                        );
                      },
                      itemBuilder: (context, index) {
                        if (state.userInfo != null) {
                          if (index <
                              (state.userInfo?.creditCards.length ?? 0)) {
                            return CreditCardItemTile(
                              creditCardNum: state.userInfo?.creditCards[index]
                                      .cardNumber ??
                                  '',
                            );
                          } else {
                            return AddNewCreditCard(
                              addNewCreditCard:
                                  _showAddNewCreditCardBottomSheet,
                            );
                          }
                        }
                        return null;
                      },
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: (state.userInfo?.creditCards.length ?? 0) + 1,
                      effect: const WormEffect(
                        activeDotColor: AppColors.deepBlueColor,
                        dotColor: Colors.grey,
                        dotHeight: 6.0,
                        dotWidth: 6.0,
                        spacing: 8.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 115.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 100.0,
                    ),
                    child: currentIndex !=
                            (state.userInfo?.creditCards.length ?? 0)
                        ? CustomFilledButton(
                            onTap: () {
                              final currentIndex =
                                  _controller.page?.round() ?? 0;
                              final selectedCard =
                                  state.userInfo?.creditCards[currentIndex];

                              if (selectedCard != null) {
                                _enterPaymentPassword(
                                  selectedCard.cardNumber,
                                  selectedCard.expDate.substring(0, 2),
                                  selectedCard.expDate.substring(2, 4),
                                  widget.courseId,
                                  '70',
                                );
                              }
                            },
                            buttonTitle: 'Pay Now',
                          )
                        : const CustomFilledButton(
                            buttonTitle: 'Add new card',
                          ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
