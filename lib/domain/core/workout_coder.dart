enum EXERCISE_OPTIONS {
  WeightRepsDuration,
  WeightReps,
  Reps,
  RepsDuration,
  Duration,
}

enum WorkoutFields { Weight, Reps, Duration }

abstract class WorkoutCoder {
  static String encode(double weight, int reps, int duration) {
    return '${weight ?? -1}:${reps ?? -1}:${duration ?? -1}';
  }

  static Series decode(String seriesStr) {
    List<String> values = seriesStr.split(':');
    return Series(
        double.parse(values[0]), int.parse(values[1]), int.parse(values[2]));
  }
}

class Series {
  final double weight;
  final int reps;
  final int duration;

  Series(this.weight, this.reps, this.duration);
}
