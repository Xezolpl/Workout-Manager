import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/presentation/bloc/auth/auth_bloc.dart';
import 'package:workout_manager/presentation/pages/widgets/main_loading_indicator.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (state) => Router.navigator.pushReplacementNamed(
                Routes.mainPage,
                arguments: MainPageArguments(user: state.user)),
            unauthenticated: (_) =>
                Router.navigator.pushReplacementNamed(Routes.signInPage),
          );
        },
        child: Scaffold(
          key: UniqueKey(),
          body: MainLoadingIndicator(),
        ));
  }
}
