import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:workout_manager/presentation/pages/sign_in/sign_in_form.dart';

class SignInPage extends StatelessWidget {

  SignInPage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: const SignInForm(),
      ),
    );
  }
}
