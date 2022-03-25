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
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  'About',
                  style: headingStyle,
                ),
                Text(
                    'A story is an imaginary account of people or situations that is told for entertainment. Everybody loves to read or listen to stories. But writing a story is not a simple task. In this chapter, we will learn the guidelines for writing a good story.'),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [Icon(Icons.lock), Text('Priavte')],
                ),
                Text(
                    'Only member who have gained access can seewho is in this club. Whats posted, and its event '),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    Icon(Icons.history),
                    Text('History'),
                  ],
                ),
                Text('Club was created on 25 May 2022'),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[900],
                    ),
                    Text('Admin'),
                  ],
                ),
                Text('GamerTag'),
                Divider(
                  thickness: 5,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text('Club Activity',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Row(
                  children: [Icon(Icons.message), Text('5 posts today')],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_view_month_sharp),
                    Text('25 games played')
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Row(
                  children: [Icon(Icons.people_alt), Text('20 members')],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                )
              ]),
        ),
      ),
    );
  }
}
