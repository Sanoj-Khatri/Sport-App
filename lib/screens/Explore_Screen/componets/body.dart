import 'package:flutter/material.dart';
import 'package:shop_app/screens/Explore_Screen/componets/fliter_screen.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(
                                builder: (context) => FliterScreen())));
                      },
                      icon: Icon(Icons.filter))
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Text(
                'Suggested for you',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              Text('Group you might be intersted in'),
              SizedBox(
                height: getProportionateScreenHeight(25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Club Name',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      //  SizedBox(height: getProportionateScreenHeight(10)),
                      Text(
                        '25 member . 1 event per week ',
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        'Join',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
