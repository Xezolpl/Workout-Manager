import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_manager/injection.dart';

class AccountPage extends StatelessWidget {
  final Widget bNavBar;
    const AccountPage({Key key, @required this.bNavBar});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: bNavBar,
        body: Text('HEY'),
    );
  }
}