import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';

class PhoneTextField extends StatefulWidget {
  final String hint;

  final TextEditingController? controller;

  const PhoneTextField({
    super.key,
    required this.hint,
    this.controller,
  });

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 0.5,
          color: AppColors.darkHintTextColor,
        ),
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: TextFormField(
        style: AppFonts.poppinsBold.copyWith(fontSize: 18),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 14.0,
            right: 135.0,
            top: 13.0,
            bottom: 12.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintStyle: AppFonts.poppinsBold.copyWith(fontSize: 18),
          hintText: widget.hint,
        ),
        onChanged: (value) {},
      ),
    );
  }
}
