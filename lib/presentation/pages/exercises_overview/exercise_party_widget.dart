import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartyWidget extends StatelessWidget {
  final String partyStr;

  const PartyWidget(this.partyStr, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path = 'assets/parties/';
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.all(1.5),
        child: ClipOval(
          child: Image.asset(
            (partyStr != null && partyStr.isNotEmpty)
                ? path + partyStr.toLowerCase() + '.jpg'
                : path + 'none.jpg',
          ),
        ));
  }
}
