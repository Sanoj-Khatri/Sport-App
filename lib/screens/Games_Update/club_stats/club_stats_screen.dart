import 'package:flutter/material.dart';

import 'Componets/body.dart';

class ClubStatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: null, icon: Icon(Icons.search))],
        title: Text(
          "Club Stats",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
