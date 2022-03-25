import 'package:flutter/material.dart';
import 'package:shop_app/screens/log_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class Resend extends StatelessWidget {
  const Resend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Didn`t receive code ? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, LogInScreen.routeName),
          child: Text(
            "Resend Again",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
