import 'package:flutter/material.dart';

import 'componets/body.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
