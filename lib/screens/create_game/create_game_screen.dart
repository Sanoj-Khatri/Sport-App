import 'package:flutter/material.dart';
import 'package:shop_app/screens/create_club/componets/flow5.dart';

import 'componets/body.dart';

class GameScreen extends StatelessWidget {
  // static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PreviewProfileScreen()));
              },
              child: Text('Publish'))
        ],
        title: Text(
          "New Game",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
