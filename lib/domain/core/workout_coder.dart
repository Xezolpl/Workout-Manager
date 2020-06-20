enum EXERCISE_OPTIONS {
  WeightRepsDuration,
  WeightReps,
  Reps,
  RepsDuration,
  Duration,
}

enum WorkoutFields {Weight, Reps, Duration}

abstract class WorkoutCoder {
  static String encode({int weight, int reps, int duration}) {
    return '$weight:$reps:$duration';
  }

  static Series decode(String seriesStr) {
    List<String> values = seriesStr.split(':');
    return Series(int.parse(values[0]), int.parse(values[1]), int.parse(values[2]));
  }
}

class Series {
  final int weight;
  final int reps;
  final int duration;

  Series(this.weight, this.reps, this.duration);
}
