import 'package:flutter/material.dart';

import 'components/body.dart';

class InterestScreen extends StatelessWidget {
  static String routeName = "/name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Gender'),
      ),
      body: Body(),
    );
  }
}
