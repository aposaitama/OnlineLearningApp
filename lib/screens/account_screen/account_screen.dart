import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_event.dart';
import 'package:online_app/screens/account_screen/widgets/account_list_item.dart';
import 'package:shimmer/shimmer.dart';

import 'account_bloc/account_state.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  AccountBloc get _accountBloc => context.read<AccountBloc>();

  @override
  void initState() {
    super.initState();
    // Future.delayed(
    //   Duration(seconds: 3),
    //   _getUserData,
    // );
    _getUserData();
  }

  void _getUserData() {
    _accountBloc.add(
      const GetUserDataEvent(),
    );
  }

  void _editUserData() {
    context.push('/edit-account');
  }

  void _settingsPrivacy() {
    context.push('/settings-privacy');
  }

  void _help() {
    context.push('/help-screen');
  }

  void _favourites() {
    context.push('/favourites');
  }

  void _logout() {
    _accountBloc.add(
      const LogoutUserEvent(),
    );
    context.go('/login');
  }

  void _toggleNotif() {
    _accountBloc.add(
      const ToggleNotificationsEvent(),
    );
  }

  void _toggleNotifSound() {
    _accountBloc.add(
      const ToggleNotificationsSoundEvent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 85.0,
          backgroundColor:
              Theme.of(context).extension<AppColorsModel>()!.darkColor,
          centerTitle: false,
          title: Text(
            'Account',
            style: AppFonts.poppinsBold.copyWith(
              color:
                  Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
              fontSize: 24.0,
              height: 2.0,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            children: [
              state.userData == null
                  ? Shimmer.fromColors(
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Container(
                        width: 89.0,
                        height: 89.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: state.userData!.avatar == null ||
                              state.userData!.avatar!.isEmpty
                          ? SvgPicture.asset(
                              Assets.icons.avatar,
                              fit: BoxFit.contain,
                            )
                          : ClipOval(
                              child: CachedNetworkImage(
                                imageUrl: state.userData!.avatar!,
                                fit: BoxFit.cover,
                                width: 89.0,
                                height: 89.0,
                              ),
                            ),
                    ),
              AccountListItem(
                title: 'Favourite',
                onTap: _favourites,
              ),
              AccountListItem(
                title: 'Edit Account',
                onTap: _editUserData,
              ),
              AccountListItem(
                title: 'Settings and Privacy',
                onTap: _settingsPrivacy,
              ),
              AccountListItem(
                title: 'Help',
                onTap: _help,
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(right: 10),
                title: Text(
                  'Notifications',
                  style: AppFonts.poppinsMedium.copyWith(
                    color: Theme.of(context)
                        .extension<AppColorsModel>()
                        ?.mainTextColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Switch(
                  activeTrackColor: AppColors.deepBlueColor,
                  inactiveTrackColor: AppColors.lightGreyColor,
                  activeColor: AppColors.darkBlue,
                  inactiveThumbColor: AppColors.grayProgressColor,
                  value: state.enableNotifications,
                  onChanged: (isOn) {
                    _toggleNotif();
                  },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.only(right: 10),
                title: Text(
                  'Notification sound',
                  style: AppFonts.poppinsMedium.copyWith(
                    color: Theme.of(context)
                        .extension<AppColorsModel>()
                        ?.mainTextColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Switch(
                  activeTrackColor: AppColors.deepBlueColor,
                  inactiveTrackColor: AppColors.lightGreyColor,
                  activeColor: AppColors.darkBlue,
                  inactiveThumbColor: AppColors.grayProgressColor,
                  value: state.enableNotificationsSound,
                  onChanged: (isOn) {
                    _toggleNotifSound();
                  },
                ),
              ),
              const Spacer(),
              AccountListItem(
                arrowIcon: false,
                title: 'Logout',
                onTap: _logout,
              ),
            ],
          ),
        ),
      );
    });
  }
}
