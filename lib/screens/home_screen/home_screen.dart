import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_app/screens/Game_flow/game_flow_screen.dart';
import 'package:shop_app/screens/create_club/club_screen.dart';
import 'package:shop_app/screens/create_club/componets/create_post.dart';
import 'package:shop_app/screens/create_game/create_game_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import 'componets/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                bottonsheets(context);
              },
              icon: Icon(Icons.add_circle)),
          IconButton(onPressed: null, icon: Icon(Icons.settings)),
          IconButton(onPressed: null, icon: Icon(Icons.search)),
        ],
        title: Text("Home Screen"),
      ),
      body: Body(),
    );
  }
}

void bottonsheets(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClubScreen()));
                      },
                      icon: Icon(
                        Icons.people,
                        size: 35,
                      ),
                      label: Text('Create Club')),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreatePost()));
                      },
                      icon: Icon(
                        Icons.post_add,
                        size: 35,
                      ),
                      label: Text('Create Post')),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GameScreen()));
                      },
                      icon: Icon(
                        Icons.calendar_view_month,
                        size: 35,
                      ),
                      label: Text('Create game')),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                ],
              ),
            ),
          ));
}
