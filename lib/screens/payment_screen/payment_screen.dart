import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/screens/payment_screen/widgets/add_new_credit_card.dart';
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

  //Mock data
  final List<String> cards = [
    // 'Card 1',
    // 'Card 2',
  ];

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
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
                itemCount: cards.length + 1,
                controller: _controller,
                itemBuilder: (context, index) {
                  if (index < cards.length) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          cards[index],
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const AddNewCreditCard();
                  }
                },
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: cards.length + 1,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 100.0,
              ),
              child: cards.length > 1
                  ? CustomFilledButton(
                      onTap: () => context.push('/successfull_payment_screen'),
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
  }
}
