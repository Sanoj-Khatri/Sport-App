import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              'Enter Pin',
              style: headingStyle,
            ),
            Text('Enter your 4 digit Pin'),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            PasswordScreen(),
          ],
        ),
      ),
    );
  }
}

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;
  FocusNode? pin7FocusNode;
  FocusNode? pin8FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
    pin7FocusNode = FocusNode();
    pin8FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    pin6FocusNode!.dispose();
    pin7FocusNode!.dispose();
    pin8FocusNode!.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
                child: Container(
                  child: Align(
                    alignment: Alignment(-1, 0),
                    child: Text(
                      "Enter Pin",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      autofocus: true,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: passwordInputDecoration,
                      onChanged: (value) {
                        nextField(value, pin2FocusNode);
                      },
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin2FocusNode,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: passwordInputDecoration,
                      onChanged: (value) {
                        nextField(value, pin3FocusNode);
                      },
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin3FocusNode,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: passwordInputDecoration,
                      onChanged: (value) {
                        nextField(value, pin4FocusNode);
                      },
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin4FocusNode,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 24),
                      textAlign: TextAlign.center,
                      decoration: passwordInputDecoration,
                      onChanged: (value) {
                        nextField(value, pin5FocusNode);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(20)),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                  child: Container(
                    child: Align(
                      alignment: Alignment(-1, 0),
                      child: Text(
                        "Re-Enter Pin",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(60),
                      child: TextFormField(
                        focusNode: pin5FocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: passwordInputDecoration,
                        onChanged: (value) {
                          nextField(value, pin6FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(60),
                      child: TextFormField(
                        focusNode: pin6FocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: passwordInputDecoration,
                        onChanged: (value) {
                          nextField(value, pin7FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(60),
                      child: TextFormField(
                        focusNode: pin7FocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: passwordInputDecoration,
                        onChanged: (value) {
                          nextField(value, pin8FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(60),
                      child: TextFormField(
                        focusNode: pin8FocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: passwordInputDecoration,
                        onChanged: (value) {
                          if (value.length == 1) {
                            pin8FocusNode!.unfocus();
                            // Then you need to check is the code is correct or not
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.15),
        DefaultButton(
          text: "Continue",
          press: () {
            Navigator.pushNamed(context, OtpScreen.routeName);
          },
        )
      ],
    );
  }
}
