import 'package:flutter/material.dart';

import 'components/body.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password"),
      ),
      body: Body(),
    );
  }
}
