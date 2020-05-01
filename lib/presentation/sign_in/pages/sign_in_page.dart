import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'package:workout_manager/presentation/sign_in/widgets/sign_in_form.dart';

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
