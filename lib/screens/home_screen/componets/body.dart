import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/complete_profile/name/name_screen.dart';
import 'package:shop_app/screens/game_flow/game_flow_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';

import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: ListView(
            children: [
              Container(
                // width: 350,
                // height: 250,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(width: getProportionateScreenWidth(10)),
                          Text('GamerTag'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50.0,
                        ),
                        child: Row(
                          children: [
                            Text('1d.'),
                            SizedBox(
                              width: getProportionateScreenWidth(10),
                            ),
                            Icon(Icons.people),
                          ],
                        ),
                      ),
                      Text(
                          'Post is here for check purpose and dum data Like share and subscribe our challne'),
                      Divider(
                        color: Colors.black26,
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.thumb_up_alt_outlined),
                              label: Text('Like')),
                          TextButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.comment_outlined),
                              label: Text('Comment')),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(15),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              // DefaultButton(
              //     text: "Continue",
              //     press: () {
              //       // if (_formKey.currentState!.validate()) {
              //       //   _formKey.currentState!.save();
              //       //   // if all are valid then go to success screen
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => GameFlowScreen()),
              //       );
              //     }),
            ],
          ),
        ),
      ),
    );
  }
}
