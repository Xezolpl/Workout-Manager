import 'package:flutter/cupertino.dart';

class PartyWidget extends StatelessWidget {
  final String partyStr;

  const PartyWidget(this.partyStr, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path = 'assets/parties/';
    return ClipOval(
        child: Image.asset(
      (partyStr != null && partyStr.isNotEmpty)
          ? path + partyStr.toLowerCase() + '.jpg'
          : path + 'none.jpg',
    ));
  }
}
