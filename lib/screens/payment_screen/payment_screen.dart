import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_event.dart';
import 'package:online_app/screens/home_screen/bloc/home_screen_bloc/home_screen_bloc_state.dart';
import 'package:online_app/screens/payment_screen/widgets/add_new_card_sheet.dart';
import 'package:online_app/screens/payment_screen/widgets/add_new_credit_card.dart';
import 'package:online_app/screens/payment_screen/widgets/enter_cvv_code_sheet.dart';
import 'package:online_app/sources/strapi_api_service/strapi_api_service.dart';
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
    // TODO: implement initState
    context.read<HomeScreenBloc>().add(LoadUserHomeScreenBlocEvent());
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
    // strapi.purchaseCourse(
    //   widget.courseId,
    // );
    // context.read<HomeScreenBloc>().add(
    //       const LoadUserHomeScreenBlocEvent(),
    //     );
    // context.push('/successfull_payment_screen');
  }

  final _controller = PageController();

  final strapi = StrapiApiService();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
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
                  Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
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
                    itemBuilder: (context, index) {
                      if (state.userInfo != null) {
                        if (index < (state.userInfo?.creditCards.length ?? 0)) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                state.userInfo?.creditCards[index].cardNumber ??
                                    '',
                                style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        } else {
                          return AddNewCreditCard(
                            addNewCreditCard: _showAddNewCreditCardBottomSheet,
                          );
                        }
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: (state.userInfo?.creditCards.length ?? 0) + 1,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 100.0,
                  ),
                  child: (state.userInfo?.creditCards.length ?? 0) > 1
                      ? CustomFilledButton(
                          onTap: () {
                            final currentIndex = _controller.page?.round() ?? 0;
                            final selectedCard =
                                state.userInfo?.creditCards[currentIndex];

                            if (selectedCard != null) {
                              _onPuchasePressed(
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
    );
  }
}
