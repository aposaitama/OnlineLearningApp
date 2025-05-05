import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_state.dart';

import '../../../gen/assets.gen.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        return state.newAvatarPath == null
            ? SvgPicture.asset(
                Assets.icons.avatar,
                fit: BoxFit.contain,
              )
            : ClipOval(
                child: Image.file(
                  File(state.newAvatarPath!),
                  fit: BoxFit.cover,
                  width: 89,
                  height: 89,
                ),
              );
      },
    );
  }
}
