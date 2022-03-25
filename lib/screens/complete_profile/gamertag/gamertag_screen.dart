import 'package:flutter/material.dart';

import 'componets/body.dart';

class GamerTag extends StatelessWidget {
  static String routeName = "/date_of_birth";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Gamertag'),
      ),
      body: Body(),
    );
  }
}
