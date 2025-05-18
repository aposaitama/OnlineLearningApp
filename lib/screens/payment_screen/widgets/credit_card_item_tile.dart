import 'package:credit_card_type_detector/credit_card_type_detector.dart';
import 'package:credit_card_type_detector/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/utils/extensions.dart';

class CreditCardItemTile extends StatefulWidget {
  final String creditCardNum;

  const CreditCardItemTile({
    super.key,
    required this.creditCardNum,
  });

  @override
  State<CreditCardItemTile> createState() => _CreditCardItemTileState();
}

class _CreditCardItemTileState extends State<CreditCardItemTile> {
  @override
  Widget build(BuildContext context) {
    final type = detectCCType(widget.creditCardNum);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.deepBlueColor,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24.0,
          bottom: 25.0,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 50.0,
                width: 70.0,
                child: SvgPicture.asset(
                    fit: BoxFit.scaleDown,
                    type.contains(CreditCardType.visa())
                        ? 'assets/icons/visa.svg'
                        : 'assets/icons/master-card.svg'),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                widget.creditCardNum.numToCardNum(),
                style: const TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
