import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/screens/complete_profile/interest/interest_screen.dart';
import '../../../../size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> lst = ['Male', 'Female', 'Perfer not to say'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Container(
        width: double.infinity,
        child: Column(children: <Widget>[
          SizedBox(height: SizeConfig.screenHeight * 0.10),
          Text(
            'Select Gender',
            style: headingStyle,
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          customRadio(lst[0], 0),
          SizedBox(height: getProportionateScreenHeight(10)),
          customRadio(lst[1], 1),
          SizedBox(height: getProportionateScreenHeight(10)),
          customRadio(lst[2], 2),
          SizedBox(height: getProportionateScreenHeight(60)),
          DefaultButton(
            text: "Next",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InterestScreen()));
            },
          ),
        ]),
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget customRadio(String txt, int index) {
    return Container(
      height: 90,
      width: 700,
      child: OutlineButton(
        onPressed: () => changeIndex(index),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        borderSide: BorderSide(
            color: selectedIndex == index ? Colors.blue.shade900 : Colors.grey),
        child: Text(
          txt,
          style: TextStyle(
              fontSize: 30,
              color:
                  selectedIndex == index ? Colors.blue.shade900 : Colors.grey),
        ),
      ),
    );
  }
}
