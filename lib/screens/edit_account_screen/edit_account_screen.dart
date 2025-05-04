import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/account_screen/account_bloc/account_bloc.dart';
import 'package:online_app/screens/edit_account_screen/widgets/edit_account_text_field.dart';

import '../../gen/assets.gen.dart';
import '../../resources/app_colors_model.dart';
import '../account_screen/account_bloc/account_state.dart';

class EditAccountScreen extends StatelessWidget {
  const EditAccountScreen({super.key});

  void _back(BuildContext context){
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          return Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: state.userData!.avatar == null
                    ? SvgPicture.asset(
                  Assets.icons.avatar,
                  fit: BoxFit.contain,
                )
                    : SvgPicture.asset(
                  state.userData!.avatar!,
                  fit: BoxFit.contain,
                ),
              ),
              EditAccountTextField(),
            ],
          );
        }
      ),
    );
  }
}
