import 'package:auto_route/auto_route_annotations.dart';
import 'package:workout_manager/presentation/pages/exercise_form/exercise_form_page.dart';
import 'package:workout_manager/presentation/pages/main_page.dart';
import 'package:workout_manager/presentation/pages/measurement/measurement_page.dart';
import 'package:workout_manager/presentation/pages/sign_in/sign_in_page.dart';
import 'package:workout_manager/presentation/pages/splash_page.dart';

@MaterialAutoRouter()
class $Router{
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
  MainPage mainPage;
  ExerciseFormPage exerciseFormPage;
  MeasurementPage measurementPage;
}