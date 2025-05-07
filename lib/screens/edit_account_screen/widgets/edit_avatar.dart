import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_state.dart';

import '../../../resources/app_colors.dart';

class EditAvatar extends StatelessWidget {
  const EditAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return state.newAvatarPath != null
            ? ClipOval(
                child: Image.file(
                  File(state.newAvatarPath!),
                  fit: BoxFit.cover,
                  width: 89.0,
                  height: 89.0,
                ),
              )
            : CachedNetworkImage(
                imageBuilder: (context, imageProvider) => Container(
                  width: 89.0,
                  height: 89.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withValues(alpha: 0.4), BlendMode.darken),
                    ),
                  ),
                  child: const Icon(
                    Icons.camera_alt_outlined,
                    color: AppColors.lightGreyColor,
                    size: 40.0,
                  ),
                ),
                imageUrl: state.userData!.avatar!,
              );
      },
    );
  }
}
