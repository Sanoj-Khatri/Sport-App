import 'package:flutter/material.dart';
import 'package:shop_app/screens/Game_flow/componets/upcoming_games.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Expanded(
          child: ListView(
            children: [
              UpcomingGames(),
              //  SizedBox(height: getProportionateScreenHeight(5)),
              UpcomingGames(),
              UpcomingGames()
            ],
          ),
        ),
      ),
    );
  }
}
