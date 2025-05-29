import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_event.dart';
import 'package:online_app/screens/edit_account_screen/widgets/edit_account_text_field.dart';
import 'package:online_app/screens/edit_account_screen/widgets/edit_avatar.dart';
import 'package:online_app/screens/edit_account_screen/widgets/image_placeholder.dart';

import '../../gen/assets.gen.dart';
import '../../resources/app_colors_model.dart';
import '../../resources/app_fonts.dart';
import '../account_screen/account_bloc/account_state.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  void _back(BuildContext context) {
    context.read<AccountBloc>().add(
          const ClearAccountStateEvent(),
        );

    context.pop();
  }

  void _pickNewAvatar(BuildContext context) {
    context.read<AccountBloc>().add(
          const PickNewAvatarEvent(),
        );
  }

  void _editUserData(BuildContext context) {
    context.read<AccountBloc>().add(
          const EditUserDataEvent(),
        );

    context.pop();
  }

  void _onEnterUsername(BuildContext context, String value) {
    context.read<AccountBloc>().add(
          EnterNewUsernameEvent(
            value,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => _back(context),
          child: SvgPicture.asset(
            Assets.icons.arrowBack,
            fit: BoxFit.scaleDown,
            colorFilter: ColorFilter.mode(
              Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => _editUserData(context),
            child: Text(
              'Save',
              style: AppFonts.poppinsMedium.copyWith(
                color: Theme.of(context)
                    .extension<AppColorsModel>()
                    ?.mainTextColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
      body: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => _pickNewAvatar(context),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: state.userData!.avatar == null ||
                            state.userData!.avatar!.isEmpty
                        ? const ImagePlaceholder()
                        : const EditAvatar(),
                  ),
                ),
                const SizedBox(height: 30.0,),
                EditAccountTextField(
                  initialValue: state.userData!.username,
                  onChanged: (value) => _onEnterUsername(context, value),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
