import 'package:flutter/material.dart';

import 'Componets/body.dart';

class PlayerScreen extends StatelessWidget {
  // static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
        title: Text(
          "Player List",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
