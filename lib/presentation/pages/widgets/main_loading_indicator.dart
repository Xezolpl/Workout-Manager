import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

class MainLoadingIndicator extends StatelessWidget {
  const MainLoadingIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.grey[50]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 32),
          JumpingText(
            'Loading...',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
