import 'dart:math';

class AssetHelper {
  static const WORKOUT = 'assets/workout';

  static const BARBELL = '$WORKOUT/barbell.png';
  static const BENCH_PRESS = '$WORKOUT/bench_press.png';
  static const BENT_DUMBBELL = '$WORKOUT/bent_dumbbell.png';
  static const BOXING = '$WORKOUT/boxing.png';
  static const CURLS = '$WORKOUT/curls.png';
  static const CURVE_BENCH = '$WORKOUT/curve_bench.png';
  static const CYCLING = '$WORKOUT/cycling.png';
  static const DUMBBELL = '$WORKOUT/dumbbell.png';
  static const JUMPING_ROD = '$WORKOUT/jumping_rod.png';
  static const PULLUPS = '$WORKOUT/pullups.png';
  static const PUSHUPS = '$WORKOUT/pushups.png';
  static const ROWING_MACHINE = '$WORKOUT/rowing_machine.png';
  static const RUNNING = '$WORKOUT/running.png';
  static const SQUATS = '$WORKOUT/squats.png';
  static const STAIRS = '$WORKOUT/stairs.png';
  static const STEPPER = '$WORKOUT/stepper.png';
  static const TREADMILL = '$WORKOUT/treadmill.png';

  static const List<String> allWorkoutImgs = [
    BARBELL,
    BENCH_PRESS,
    BENT_DUMBBELL,
    BOXING,
    CURLS,
    CURVE_BENCH,
    CYCLING,
    DUMBBELL,
    JUMPING_ROD,
    PULLUPS,
    PUSHUPS,
    ROWING_MACHINE,
    RUNNING,
    SQUATS,
    STAIRS,
    STEPPER,
    TREADMILL,
  ];

  static String randomWorkoutImagePath() {
    return allWorkoutImgs[Random().nextInt(allWorkoutImgs.length - 1)];
  }
}
