import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';
part 'bottom_navigation_bloc.freezed.dart';

@injectable
class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  int currentIndex = 1;

  @override
  BottomNavigationState get initialState => BottomNavigationState.workoutPage();

  @override
  Stream<BottomNavigationState> mapEventToState(
    BottomNavigationEvent event,
  ) async* {
    currentIndex = event.newIndex;
    if (currentIndex == 0) {
      yield BottomNavigationState.exercisesPage();
    } else if (currentIndex == 1) {
      yield BottomNavigationState.workoutPage();
    } else if (currentIndex == 2) {
      yield BottomNavigationState.accountPage();
    }
  }

  
}
