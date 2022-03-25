import 'package:flutter/material.dart';

import 'componets/body.dart';

class PastGameScreeb extends StatelessWidget {
  // static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
        title: Text(
          "Upcoming Game",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
