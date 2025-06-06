import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hint;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatter;

  const CustomTextField({
    super.key,
    required this.title,
    required this.hint,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.inputFormatter,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = true;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppFonts.poppinsRegular.copyWith(
            fontSize: 14.0,
            color: AppColors.darkHintTextColor,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
        Container(
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
            inputFormatters: widget.inputFormatter ?? [],
            autovalidateMode: AutovalidateMode.disabled,
            obscureText: widget.isPassword == true ? obscureText : false,
            controller: widget.controller,
            validator: widget.validator,
            onChanged: (value) {
              if (widget.validator != null) {
                setState(() {
                  errorText = widget.validator!(value);
                });
              }
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                left: 14.0,
                right: 22.0,
                top: 13.0,
                bottom: 12.0,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintStyle: AppFonts.poppinsRegular.copyWith(
                fontSize: 14.0,
              ),
              hintText: widget.hint,
              suffixIcon: widget.isPassword == true
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          Assets.icons.hide,
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                    )
                  : null,
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 6.0, left: 6.0),
            child: Text(
              errorText!,
              style: TextStyle(color: Colors.red, fontSize: 12.0),
            ),
          ),
      ],
    );
  }
}
