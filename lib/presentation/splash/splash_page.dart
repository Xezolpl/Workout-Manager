import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/presentation/auth/bloc/auth_bloc.dart';
import 'package:workout_manager/presentation/routes/router.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';



class SplashPage extends StatelessWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (_) =>
                Router.navigator.pushReplacementNamed(Routes.mainPage),
            unauthenticated: (_) =>
                Router.navigator.pushReplacementNamed(Routes.signInPage),
          );
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
