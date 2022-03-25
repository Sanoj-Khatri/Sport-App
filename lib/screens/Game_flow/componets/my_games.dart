import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class MyGames extends StatefulWidget {
  const MyGames({Key? key}) : super(key: key);

  @override
  State<MyGames> createState() => _MyGamesState();
}

class _MyGamesState extends State<MyGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Games',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Game Name',
                                style: headingStyle,
                              ),
                              Text(
                                'Club Name',
                                style: TextStyle(fontSize: 20),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(backgroundColor: Colors.blue),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'JUNE 2, 2:00 pm EST',
                                        ),
                                        Text(
                                          'Central Park',
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ]))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
