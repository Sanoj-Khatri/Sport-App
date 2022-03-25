import 'package:flutter/material.dart';
import 'package:shop_app/screens/Game_flow/componets/my_games.dart';
import 'package:shop_app/screens/create_club/club_screen.dart';
import 'package:shop_app/screens/create_club/componets/create_post.dart';
import 'package:shop_app/screens/create_game/create_game_screen.dart';

import '../../size_config.dart';
import 'componets/body.dart';

class GameFlowScreen extends StatelessWidget {
  const GameFlowScreen({Key? key}) : super(key: key);
  // static String routeName = "/password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.calendar_view_month))
        ],
        title: TextButton.icon(
            onPressed: () {
              bottonsheets(context);
            },
            icon: Icon(Icons.arrow_drop_down_rounded),
            label: Text('Upcoming Games')),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

void bottonsheets(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Expanded(
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('What would you like to see'),
                    Divider(),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GameFlowScreen()));
                        },
                        child: Text('Upcoming Games')),
                    Divider(),
                    // SizedBox(
                    //   height: getProportionateScreenHeight(20),
                    // ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyGames()));
                        },
                        child: Text('My Games')),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                  ],
                ),
              ),
            ),
          ));
}
