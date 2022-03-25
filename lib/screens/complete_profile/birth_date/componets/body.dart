import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/complete_profile/name/name_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _date = "Not set";
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "What is your Date of Birth ?",
              style: headingStyle,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.10),

            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              elevation: 4.0,
              onPressed: () {
                DatePicker.showDatePicker(context,
                    theme: DatePickerTheme(
                      // backgroundColor: Colors.blue,
                      containerHeight: 210.0,
                    ),
                    showTitleActions: true,
                    minTime: DateTime(1950, 1, 1),
                    maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                  print('confirm $date');
                  _date = '${date.year} - ${date.month} - ${date.day}';
                  setState(() {});
                }, currentTime: DateTime.now(), locale: LocaleType.en);
              },
              child: Container(
                alignment: Alignment.center,
                height: 80.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.date_range,
                                size: 20.0,
                                color: Colors.blue[900],
                              ),
                              Text(
                                " $_date",
                                style: TextStyle(
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "  Change",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              color: Colors.white,
            ),
            SizedBox(
              height: 20.0,
            ),
            //
            SizedBox(height: SizeConfig.screenHeight * 0.15),
            DefaultButton(
              text: "Next",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NameScreen()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
