import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Verify your Phone Number",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
