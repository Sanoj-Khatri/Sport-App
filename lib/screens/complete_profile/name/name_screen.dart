import 'package:flutter/material.dart';

import 'componets/body.dart';

class NameScreen extends StatelessWidget {
  static String routeName = "/name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Name and LastName'),
      ),
      body: Body(),
    );
  }
}
