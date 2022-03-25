import 'package:flutter/material.dart';

import 'componets/body.dart';

class ClubScreen extends StatelessWidget {
  // static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create a Club",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
