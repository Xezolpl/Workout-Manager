import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workout_manager/domain/entities/exercise.dart';
import 'package:workout_manager/presentation/pages/exercises_overview/exercise_party_widget.dart';

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;

  const ExerciseCard({Key key, @required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 2),
                  blurRadius: 5,
                  color: Colors.black38,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 2,
                    ),
                    CircleAvatar(
                        child: exercise.imgUrl.isNotEmpty
                            ? Image.network(
                                exercise.imgUrl,
                                loadingBuilder: (context, child, progress) {
                                  return progress == null
                                      ? child
                                      : CircularProgressIndicator();
                                },
                              )
                            : Image.asset('assets/util/empty_img.jpg'),
                        radius: 30),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        exercise.name,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(3),
                                    child: Icon(Icons.star)),
                                SizedBox(
                                  width: 3,
                                ),
                                Text("190kg"),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(3),
                                    child: Icon(Icons.done)),
                                SizedBox(
                                  width: 3,
                                ),
                                Text("165kg"),
                              ],
                            ),
                            Container(
                              constraints: BoxConstraints.tightFor(
                                  width: 80, height: 34),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  PartyWidget(exercise.parties[0]),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  PartyWidget(exercise.parties[1]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
