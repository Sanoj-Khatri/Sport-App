import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../../size_config.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, SignUpScreen.routeName);
      //Navigator.pushNamed(context, SignUpScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: getProportionateScreenHeight(265),
                  width: getProportionateScreenWidth(235),
                ),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              ],
            ),
          ),
        ));
  }
}
