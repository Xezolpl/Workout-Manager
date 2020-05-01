import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:workout_manager/presentation/sign_in/pages/main_page.dart';
import 'package:workout_manager/presentation/sign_in/pages/sign_in_page.dart';

import '../splash_page.dart';

@MaterialAutoRouter()
class $Router{
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  MainPage mainPage;
}