import 'package:flutter/material.dart';

import '../../../resources/app_colors_model.dart';
import '../../../resources/app_fonts.dart';

class AccountListItem extends StatelessWidget {
  final String title;
  final bool? arrowIcon;
  final VoidCallback onTap;

  const AccountListItem({
    super.key,
    required this.title,
    required this.onTap,
    this.arrowIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: GestureDetector(
        onTap: arrowIcon == false ? onTap : null,
        child: Text(
          title,
          style: AppFonts.poppinsMedium.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()?.mainTextColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      trailing: arrowIcon == true
          ? IconButton(
              onPressed: onTap,
              icon: const Icon(Icons.arrow_forward_ios_rounded),
            )
          : null,
    );
  }
}
