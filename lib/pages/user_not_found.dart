import 'package:flutter/material.dart';

class UserNotFound extends StatelessWidget {
  const UserNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Not a User"),
      ),
    );
  }
}
