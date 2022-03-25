import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import '../../../size_config.dart';

class FliterScreen extends StatefulWidget {
  const FliterScreen({Key? key}) : super(key: key);

  @override
  State<FliterScreen> createState() => _FliterScreenState();
}

class _FliterScreenState extends State<FliterScreen> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: SafeArea(
          child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Filter',
                          style: headingStyle,
                        ),
                        TextButton(onPressed: null, child: Text('Rest All')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel')),
                      ],
                    ),
                    Divider(),
                    Text(
                      'Distance',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('0km-60km'),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 20.0,
                        activeColor: Colors.red,
                        inactiveColor: Colors.blue[900],
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} dollars';
                        }),
                  ],
                ),
              ))),
    );
  }
}
