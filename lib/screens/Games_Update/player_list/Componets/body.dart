import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Expanded(
      child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: ListView(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                    ),
                    Text(
                      'Gamer Tag',
                    ),
                    // SizedBox(width: ,)
                    Text('25 game player', style: TextStyle(fontSize: 10)),
                    Text('Member Since 2021', style: TextStyle(fontSize: 10))
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
