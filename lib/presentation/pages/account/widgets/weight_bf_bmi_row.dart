import 'package:flutter/material.dart';
import 'package:workout_manager/domain/entities/measurement/measurement.dart';
import 'package:workout_manager/presentation/pages/account/widgets/styled_value_container.dart';

class WeightBfBmiRow extends StatelessWidget {
  final Measurement measurement;
  const WeightBfBmiRow(this.measurement, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StyledValueContainer(
          titleText: 'Weight',
          valueText: '${measurement != null ? measurement.weight : '-'}kg',
          color: Color(0xffECEFF1),
        ),
        SizedBox(
          width: 3,
        ),
        StyledValueContainer(
          titleText: 'Body Fat',
          valueText: '${measurement != null ? measurement.bodyFat : '-'}%',
          color: Color(0xffCFD8DC),
        ),
        SizedBox(
          width: 3,
        ),
        StyledValueContainer(
          titleText: 'BMI',
          valueText:
              '${measurement != null ? double.parse(measurement.bmi.toStringAsFixed(2)) : '-'}',
          color: Color(0xffECEFF1),
        ),
      ],
    );
  }
}
