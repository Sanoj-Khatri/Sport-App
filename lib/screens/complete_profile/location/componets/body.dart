import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/bottom_navi_bar.dart';

import 'package:shop_app/screens/complete_profile/location/componets/mapscreen.dart';
import 'package:shop_app/screens/create_club/club_screen.dart';
import 'package:shop_app/screens/home_screen/home_screen.dart';

import '../../../../size_config.dart';
import '../location_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(children: [
        Column(
          children: [
            MapScreen(),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            ExpansionTile(
              title: Text('Enter your location'),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Country/Region',
                      hintText: 'Pakistan',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Stress Address',
                      hintText: 'e.g 10th Avenu',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'City',
                      hintText: 'Karachi',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Province',
                      hintText: 'Sindh',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            SizedBox(
              width: 300,
              child: DefaultButton(
                  text: "Next",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNaviBar()));
                  }),
            )
          ],
        ),
      ]),
    );
  }
}
