import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/Games_Update/club_stats/club_stats_screen.dart';
import 'package:shop_app/screens/Games_Update/past_games/past_game_screen.dart';
import 'package:shop_app/screens/Games_Update/player_list/player_screen.dart';
import 'package:shop_app/screens/create_game/create_game_screen.dart';
import 'package:shop_app/size_config.dart';

class PreviewProfileScreen extends StatelessWidget {
  // static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.calendar_today),
            tooltip: 'Calnder',
          ),
          IconButton(onPressed: null, icon: Icon(Icons.search_rounded)),
        ],
        title: Text(
          "Create a Club",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: ListView(
                children: [
                  Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text('Banner Image'),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Text(
                    'Club Name',
                    style: headingStyle,
                  ),
                  Text('Public Group.5 Members'),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  // Have to change the Row element in Choice chip
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PastGameScreeb()));
                          },
                          child: Text('Past Game',
                              style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayerScreen()));
                          },
                          child: Text(
                            'Player List',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClubStatsScreen()));
                          },
                          child: Text('Club Stats',
                              style: TextStyle(color: Colors.white)),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Next Game',
                        style: headingStyle,
                      ),
                      TextButton(onPressed: null, child: Text('See All'))
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(15),
                  ),
                  Container(
                      width: 350,
                      height: 180,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Game Name',
                            style: headingStyle,
                          ),
                          Text('Hosted by gamertag'),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          Text('JUNE 2, 2:00 pm EST',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Central Park',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text('Not Playing'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text('Playing'),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text('Maybe'),
                              ),
                            ],
                          ),
                        ],
                      )),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Container(
                    width: 350,
                    height: 160,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                              ),
                              Text('Gamter Tag')
                            ],
                          ),
                          TextFormField(
                            decoration:
                                InputDecoration(hintText: 'Write Something'),
                          ),
                          TextButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.image),
                              label: Text('Photo/Video'))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(width: getProportionateScreenWidth(10)),
                              Text('GamerTag'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 50.0,
                            ),
                            child: Row(
                              children: [
                                Text('1d.'),
                                SizedBox(
                                  width: getProportionateScreenWidth(10),
                                ),
                                Icon(Icons.people),
                              ],
                            ),
                          ),
                          Text(
                              'Post is here for check purpose and dum data Like share and subscribe our challne'),
                          Divider(
                            color: Colors.black26,
                          ),
                          Row(
                            children: [
                              TextButton.icon(
                                  onPressed: null,
                                  icon: Icon(Icons.thumb_up_alt_outlined),
                                  label: Text('Like')),
                              TextButton.icon(
                                  onPressed: null,
                                  icon: Icon(Icons.comment_outlined),
                                  label: Text('Comment')),
                            ],
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(20),
                              ),
                              Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Write Comment'),
                                    TextButton.icon(
                                      onPressed: null,
                                      icon: Icon(
                                        Icons.camera_alt_outlined,
                                      ),
                                      label: Text(''),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Container(
                    width: 250,
                    child: DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GameScreen()));
                        //  Navigator.pushNamed(context, BirthDate.routeName);
                      },
                    ),
                  ),

                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
