import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/resources/app_colors.dart';

class AddNewCreditCard extends StatelessWidget {
  final void Function()? addNewCreditCard;
  const AddNewCreditCard({super.key, this.addNewCreditCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        color: AppColors.deepBlueColor,
        borderRadius: BorderRadius.circular(
          30.0,
        ),
      ),
      child: Center(
        child: SizedBox(
          child: GestureDetector(
            onTap: addNewCreditCard,
            child: SvgPicture.asset(
              height: 50.0,
              width: 50.0,
              'assets/icons/AddIcon.svg',
              colorFilter: ColorFilter.mode(
                Colors.white.withValues(
                  alpha: 0.3,
                ),
                BlendMode.srcIn,
              ),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
