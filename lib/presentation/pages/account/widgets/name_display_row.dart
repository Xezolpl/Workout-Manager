import 'package:flutter/material.dart';
import 'package:workout_manager/domain/entities/user/user.dart';

class NameDisplayRow extends StatelessWidget {
  final User user;
  const NameDisplayRow(this.user, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              user.photoUrl,
              width: 60,
              height: 60,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  user.emailAddress,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
