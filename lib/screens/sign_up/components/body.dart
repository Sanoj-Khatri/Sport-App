import 'package:flutter/material.dart';
import 'package:shop_app/components/socal_card.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(top: 40),
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.01), // 4%
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Phone Number", style: headingStyle)),

                  Text(
                    "Please enter your phone number. A verfication code will code will be sent to you",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  SignUpForm(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),

                  SizedBox(height: getProportionateScreenHeight(20)),
                  // Text(
                  //   'By continuing your confirm that you agree \nwith our Term and Condition',
                  //   textAlign: TextAlign.center,
                  //   style: Theme.of(context).textTheme.caption,
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
