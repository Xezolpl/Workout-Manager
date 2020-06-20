import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/domain/core/constants/exercise_constants.dart';
import 'package:workout_manager/presentation/bloc/exercise_form/exercise_form_bloc.dart';

class ExercisePartySelector extends StatelessWidget {
  final int index;

  ExercisePartySelector({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPrimary = index == 0;
    bool firstUsage = true;

    String selectedParty =
        isPrimary ? EXERCISE_PARTIES[1] : EXERCISE_PARTIES[0];
        
    return BlocConsumer<ExerciseFormBloc, ExerciseFormState>(
      listener: (context, state) {
        if (state.isEditing && firstUsage) {
          firstUsage = false;
          selectedParty = state.exercise.parties[index];
        } else {
          if (isPrimary)
            selectedParty = state.primaryParty;
          else if (index == 1)
            selectedParty = state.secondaryParty;
          else
            selectedParty = state.tetriaryParty;
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            padding: EdgeInsets.all(6),
            constraints: BoxConstraints.tightFor(height: 50),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black38),
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                    colors: isPrimary
                        ? [Color(0xfffffcf5), Color(0xfffffae8)]
                        : [Color(0xfffafafa), Color(0xffefefef)])),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: ClipOval(
                      child: Image.asset(
                    isPrimary
                        ? 'assets/util/primary.jpg'
                        : 'assets/util/secondary.jpg',
                    fit: BoxFit.cover,
                  )),
                ),
                SizedBox(
                  width: 15,
                ),
                DropdownButton<String>(
                    value: selectedParty,
                    items: EXERCISE_PARTIES
                        .sublist(isPrimary ? 1 : 0)
                        .map((party) => DropdownMenuItem<String>(
                              value: party,
                              child: Container(width: 200, child: Text(party)),
                            ))
                        .toList(),
                    onChanged: (value) {
                      context
                          .bloc<ExerciseFormBloc>()
                          .add(ExerciseFormEvent.partyChanged(value, index));
                    }),
              ],
            ),
          ),
        );
      },
    );
  }
}
