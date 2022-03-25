import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/complete_profile/interest/interest_screen.dart';
import 'package:shop_app/screens/complete_profile/location/location_screen.dart';
//import 'package:shop_app/screens/complete_profile/location.dart/components/mapscreen.dart';
//import 'package:shop_app/screens/complete_profile/location/location_screen.dart';

import '../../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          Text(
            'Tap your interest to find more club',
            style: headingStyle,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.10),
          Wrap(
            spacing: 12.0,
            runSpacing: 15.0,
            children: [
              FliterChip(chipName: 'Tennies', iconName: Icons.gamepad),
              FliterChip(chipName: 'Circket', iconName: Icons.gamepad),
              FliterChip(chipName: 'FootBall', iconName: Icons.gamepad),
              FliterChip(chipName: 'Cycling', iconName: Icons.gamepad),
              FliterChip(chipName: 'Cards', iconName: Icons.gamepad),
              FliterChip(chipName: 'Fihing', iconName: Icons.gamepad),
              FliterChip(chipName: 'Sport', iconName: Icons.gamepad),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(80)),
          DefaultButton(
              text: "Next",
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocationScreen()));
              })
        ],
      ),
    );
  }
}

class FliterChip extends StatefulWidget {
  final String chipName;
  final iconName;

  const FliterChip({Key? key, required this.chipName, required this.iconName})
      : super(key: key);

  @override
  _FliterChipState createState() => _FliterChipState();
}

class _FliterChipState extends State<FliterChip> {
  var _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      showCheckmark: false,
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.blue[200],
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.blue.shade900,
    );
  }
}
