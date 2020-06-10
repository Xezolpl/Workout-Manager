enum WORKOUT_OPTIONS {
  WeightRepsDuration,
  WeightReps,
  Reps,
  RepsDuration,
  Duration,
}

class WorkoutCoder {
  static String encode(WORKOUT_OPTIONS option, {int weight, int reps, int duration}){
    switch (option){
      case WORKOUT_OPTIONS.WeightRepsDuration: {
        return weight.toString()+ ':' + reps.toString() + ':' + duration.toString();
      }
      case WORKOUT_OPTIONS.WeightReps: {
        return weight.toString()+ ':' + reps.toString() + ':-';
      }
      case WORKOUT_OPTIONS.Reps: {
        return '-:' + reps.toString() + ':-';
      }
      case WORKOUT_OPTIONS.RepsDuration: {
        return '-:' + reps.toString() + ':' + duration.toString();
      }
      case WORKOUT_OPTIONS.Duration: {
        return '-:-:' + duration.toString();
      }
    }
    return null;
  }

  static Series decode(String seriesStr){
    List<String> values = seriesStr.split(':');
    int weight = values[0]=='-' ? null : int.tryParse(values[0]);
    int reps = values[1]=='-' ? null : int.tryParse(values[1]);
    int duration = values[2]=='-' ? null : int.tryParse(values[2]);
    WORKOUT_OPTIONS option;
    if(weight==null && reps==null){
      option = WORKOUT_OPTIONS.Duration;
    } else if(weight==null && duration==null){
      option = WORKOUT_OPTIONS.Reps;
    } else if(weight==null){
      option = WORKOUT_OPTIONS.RepsDuration;
    } else if(duration ==null){
      option = WORKOUT_OPTIONS.WeightReps;
    } else{
      option = WORKOUT_OPTIONS.WeightRepsDuration;
    }
    return Series(option,weight,reps,duration);
  }
}

class Series{
  final WORKOUT_OPTIONS option;
  final int weight;
  final int reps;
  final int duration;

  Series(this.option, this.weight, this.reps, this.duration);
}