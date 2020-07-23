import 'package:flutter/material.dart';

class StyledValueContainer extends StatelessWidget {
  final Color color;
  final String titleText, valueText;

  const StyledValueContainer(
      {@required this.titleText, @required this.valueText, this.color, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xff969696),
            width: 1.5,
          ),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$titleText',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ArchivoNarrow'),
            ),
            Text(
              '$valueText',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontFamily: 'Signika'),
            ),
          ],
        ),
      ),
    );
  }
}
