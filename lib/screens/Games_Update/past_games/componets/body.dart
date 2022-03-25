import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

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
        child: Expanded(
            child: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView(
        children: [
          Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Game Name',
                          style: headingStyle,
                        ),
                        Text(
                          'Club Name',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'JUNE 2, 2:00 pm EST',
                                  ),
                                  Text(
                                    'Central Park',
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ]))),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Game Name',
                          style: headingStyle,
                        ),
                        Text(
                          'Club Name',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('JUNE 2, 2:00 pm EST'),
                                  Text('Central Park'),
                                ],
                              ),
                            )
                          ],
                        )
                      ]))),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Game Name',
                          style: headingStyle,
                        ),
                        Text(
                          'Club Name',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('JUNE 2, 2:00 pm EST'),
                                  Text('Central Park'),
                                ],
                              ),
                            )
                          ],
                        )
                      ]))),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Game Name',
                          style: headingStyle,
                        ),
                        Text(
                          'Club Name',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('JUNE 2, 2:00 pm EST'),
                                  Text('Central Park'),
                                ],
                              ),
                            )
                          ],
                        )
                      ]))),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Game Name',
                          style: headingStyle,
                        ),
                        Text(
                          'Club Name',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            CircleAvatar(backgroundColor: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('JUNE 2, 2:00 pm EST'),
                                  Text('Central Park'),
                                ],
                              ),
                            )
                          ],
                        )
                      ]))),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
        ],
      ),
    )));
  }
}
