import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_manager/injection.dart';
import 'package:workout_manager/presentation/bloc/auth/auth_bloc.dart';
import 'package:workout_manager/presentation/routes/router.gr.dart';


void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
          ),
        ],
        child: MaterialApp(
          title: 'Workout tracker',
          theme: ThemeData.light().copyWith(
            primaryColor: Colors.orange[700],
            accentColor: Colors.amber[200],
          ),
          builder: ExtendedNavigator<Router>(
            router: Router(),
            initialRoute: Routes.splashPage,
          )
        ));
  }
}
