// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:workout_manager/presentation/pages/splash_page.dart';
import 'package:workout_manager/presentation/pages/sign_in/sign_in_page.dart';
import 'package:workout_manager/presentation/pages/main_page.dart';
import 'package:workout_manager/presentation/pages/exercise_form/exercise_form_page.dart';
import 'package:workout_manager/domain/entities/exercise.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const mainPage = '/main-page';
  static const exerciseFormPage = '/exercise-form-page';
}

class Router extends RouterBase {
  //This will probably be removed in future versions
  //you should call ExtendedNavigator.ofRouter<Router>() directly
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        if (hasInvalidArgs<SplashPageArguments>(args)) {
          return misTypedArgsRoute<SplashPageArguments>(args);
        }
        final typedArgs = args as SplashPageArguments ?? SplashPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.signInPage:
        if (hasInvalidArgs<SignInPageArguments>(args)) {
          return misTypedArgsRoute<SignInPageArguments>(args);
        }
        final typedArgs = args as SignInPageArguments ?? SignInPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.mainPage:
        if (hasInvalidArgs<MainPageArguments>(args)) {
          return misTypedArgsRoute<MainPageArguments>(args);
        }
        final typedArgs = args as MainPageArguments ?? MainPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => MainPage(key: typedArgs.key),
          settings: settings,
        );
      case Routes.exerciseFormPage:
        if (hasInvalidArgs<ExerciseFormPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ExerciseFormPageArguments>(args);
        }
        final typedArgs = args as ExerciseFormPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => ExerciseFormPage(
              key: typedArgs.key, editedExercise: typedArgs.editedExercise),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//SplashPage arguments holder class
class SplashPageArguments {
  final Key key;
  SplashPageArguments({this.key});
}

//SignInPage arguments holder class
class SignInPageArguments {
  final Key key;
  SignInPageArguments({this.key});
}

//MainPage arguments holder class
class MainPageArguments {
  final Key key;
  MainPageArguments({this.key});
}

//ExerciseFormPage arguments holder class
class ExerciseFormPageArguments {
  final Key key;
  final Exercise editedExercise;
  ExerciseFormPageArguments({this.key, @required this.editedExercise});
}
