import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/complete_profile/location/componets/mapscreen.dart';
import 'package:shop_app/screens/complete_profile/location/location_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Expanded(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: ListView(
                children: [
                  Text('Event Name'),
                  Divider(
                    thickness: 2.0,
                    color: Colors.blue[900],
                  ),
                  Row(
                    children: [
                      Text('Hosted by'),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(10),
                      ),
                      Text('GamerTag')
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Container(
                    width: 350,
                    height: 150,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Date'),
                              Text('Tommorrow'),
                            ],
                          ),
                          Divider(
                            thickness: 2.0,
                            color: Colors.blue[900],
                          ),
                          Text('Start Time'),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text('End Time'),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text('Time Zone'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Text(
                    'Location',
                    style: headingStyle,
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  MapScreen(),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  ExpansionTile(
                    title: Text('Enter your location'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Country/Region',
                            hintText: 'Pakistan',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Stress Address',
                            hintText: 'e.g 10th Avenu',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'City',
                            hintText: 'Karachi',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Province',
                            hintText: 'Sindh',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                        hintText: 'Descripation',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  Text('Max 200 letter'),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
