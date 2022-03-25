import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/create_club/club_screen.dart';
import 'package:shop_app/screens/create_club/componets/privacy.dart';
import 'package:shop_app/size_config.dart';

import 'category.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            ClubName(),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            PrivacyOption(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Location(),
            // Radio(value: 'Online', groupValue: _character, onChanged: null),
            Divider(
              color: Colors.black,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            ClubMember(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Column(
              children: [
                Text(
                  'Add Descripation',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Describe What your club is About',
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Container(
                  width: 330,
                  child: TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: "Add Descripation",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Container(
                  width: 250,
                  child: DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Category()));
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Padding ClubName() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
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
          labelText: "Club Name",
          hintText: "Enter Club Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/jazz_cash.svg"),
        )),
  );
}

Padding Location() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
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
          labelText: "Location",
          hintText: "Enter City Name Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/jazz_cash.svg"),
        )),
  );
}

Padding ClubMember() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: TextFormField(
        keyboardType: TextInputType.number,
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
          labelText: "Number of Members",
          hintText: "Enter quantity",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/jazz_cash.svg"),
        )),
  );
}
