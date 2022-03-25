import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/complete_profile/name/name_screen.dart';
import 'package:shop_app/screens/complete_profile/gamertag/gamertag_screen.dart';

import '../../../../constants.dart';
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
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              Text(
                'Enter Your Name',
                style: headingStyle,
              ),
              SizedBox(height: getProportionateScreenHeight(100)),
              FirstName(),
              SizedBox(height: getProportionateScreenHeight(30)),
              LastName(),
              SizedBox(height: getProportionateScreenHeight(100)),
              DefaultButton(
                text: 'Next',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GamerTag()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField LastName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      // onSaved: (newValue) => phoneNumber = newValue,
      // onChanged: (value) {
      //   if (value.isNotEmpty) {
      //     removeError(error: kNamelNullError);
      //   }
      //   return null;
      // },
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     addError(error: kPhoneNumberNullError);
      //     return "";
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Last Name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField FirstName() {
    return TextFormField(
        keyboardType: TextInputType.text,
        // onSaved: (newValue) => phoneNumber = newValue,
        // onChanged: (value) {
        //   if (value.isNotEmpty) {
        //     removeError(error: kPhoneNumberNullError);
        //   }
        //   return null;
        // },
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     addError(error: kPhoneNumberNullError);
        //     return "";
        //   }
        //   return null;
        // },
        decoration: InputDecoration(
          labelText: "First Name",
          hintText: "Enter your First Name",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/jazz_cash.svg"),
        ));
  }
}
