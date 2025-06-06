import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_event.dart';
import 'package:online_app/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';

class AuthGateScreen extends StatelessWidget {
  const AuthGateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthGateBloc()..add(const CheckRequestedAuthBlocEvent()),
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthGateBloc, AuthGateBlocState>(
            listenWhen: (previous, current) =>
                previous.gateStatus != current.gateStatus,
            listener: (context, state) {
              if (state.gateStatus == AuthGateStatus.authenticated) {
                context
                    .read<AuthGateBloc>()
                    .add(const CheckIfAllUserDataEntered());
              } else if (state.gateStatus == AuthGateStatus.unAuthenticated) {
                context.go('/onboarding-screen');
              }
            },
          ),
          BlocListener<AuthGateBloc, AuthGateBlocState>(
            listenWhen: (previous, current) =>
                previous.dataEnteredStatus != current.dataEnteredStatus,
            listener: (context, state) {
              if (state.dataEnteredStatus == AllDataEntered.entered) {
                context.go('/home');
              } else if (state.dataEnteredStatus == AllDataEntered.notEntered) {
                context.go('/phone_linking');
              } else if (state.dataEnteredStatus ==
                  AllDataEntered.onlyPhoneEntered) {
                context.go('/phone_verify');
              }
            },
          ),
        ],
        child: BlocBuilder<AuthGateBloc, AuthGateBlocState>(
          builder: (context, state) {
            if (state.gateStatus == AuthGateStatus.initial) {
              return const Center(child: CircularProgressIndicator());
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
