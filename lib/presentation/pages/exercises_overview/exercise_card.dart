import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_manager/domain/core/asset_helper.dart';
import 'package:workout_manager/domain/entities/exercise/exercise.dart';
import 'package:workout_manager/presentation/pages/exercises_overview/exercise_party_widget.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFFB74D),
                    Color(0xddFFB74D),
                    Color(0xbbFFB74D),
                    Color(0x99FFB74D),
                    Color(0x77FFB74D),
                    Color(0x55FFB74D),
                    Color(0x33FFB74D),
                  ]),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset(
                        AssetHelper.randomWorkoutImagePath(),
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  PartiesMarker(exercise.parties),
                ]),
          ),
          SizedBox(
            height: 2,
          ),
          SizedBox(
            width: 1000,
            child: Container(
              height: 1.5,
              decoration: BoxDecoration(color: Colors.lightBlue[900]),
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0x04FFB74D),
              ),
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              alignment: Alignment.center,
              child: Text(
                exercise.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class PartiesMarker extends StatelessWidget {
  final List<String> parties;
  const PartiesMarker(this.parties, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          PartyWidget(parties[0]),
          PartyWidget(parties[1]),
        ],
      ),
    );
  }
}
