import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/core/regex_validators.dart';
import 'package:workout_manager/presentation/bloc/auth/auth_bloc.dart';
import 'package:workout_manager/presentation/bloc/sign_in/sign_in_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(() {}, (either) {
          either.fold((lFailure) {
            FlushbarHelper.createError(
              message: lFailure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) =>
                    'Invalid email and password combination',
              ),
            ).show(context);
          }, (rUnit) {
            Router.navigator.pushReplacementNamed(Routes.splashPage);
            context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
          });
        });
      },
      builder: (context, state) {
        return Form(
            autovalidate: state.showErrorMessages,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: <Widget>[
                const Text('📝', //TODO: PUT HERE A APLICATION LOGO
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 130)),
                SizedBox(height: 8.0),
                TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    onChanged: (value) => context
                        .bloc<SignInBloc>()
                        .add(SignInEvent.emailChanged(value)),
                    validator: (_) => isEmailValid(state.emailAddress)
                        ? null
                        : 'Invalid Email'),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<SignInBloc>()
                      .add(SignInEvent.passwordChanged(value)),
                  validator: (_) => isPasswordValid(state.password)
                      ? null
                      : 'Invalid password',
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () => context.bloc<SignInBloc>().add(
                            const SignInEvent
                                .signInWithEmailAndPasswordPressed()),
                        child: const Text('SIGN IN'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: FlatButton(
                        onPressed: () => context.bloc<SignInBloc>().add(
                            const SignInEvent
                                .registerWithEmailAndPasswordPressed()),
                        child: const Text('REGISTER'),
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () => context
                      .bloc<SignInBloc>()
                      .add(SignInEvent.signInWithGooglePressed()),
                  color: Colors.lightBlue,
                  child: const Text('SIGN IN WITH GOOGLE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(height: 8),
                  const LinearProgressIndicator(value: null),
                ]
              ],
            ));
      },
    );
  }
}
