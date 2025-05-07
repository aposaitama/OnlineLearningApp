import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/gen/assets.gen.dart';
import 'package:online_app/resources/app_colors_model.dart';
import 'package:online_app/resources/app_fonts.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_event.dart';
import 'package:online_app/screens/account_screen/widgets/account_list_item.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.0,
        backgroundColor:
            Theme.of(context).extension<AppColorsModel>()!.darkColor,
        centerTitle: false,
        title: Text(
          'Account',
          style: AppFonts.poppinsBold.copyWith(
            color: Theme.of(context).extension<AppColorsModel>()!.mainTextColor,
            fontSize: 24.0,
            height: 2.0,
          ),
        ),
      ),
      body: BlocConsumer<AccountBloc, AccountState>(
        listener: (context, state) {
          if (state.userData != null) {
            // _getUserData()ж
          }
        },
        builder: (context, state) {
          if (state.userData == null) {
            return const CircularProgressIndicator();
          } else {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: state.userData!.avatar == null ||
                            state.userData!.avatar == ''
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
                    onTap: () {},
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
                      value: (false),
                      onChanged: (isOn) {},
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
