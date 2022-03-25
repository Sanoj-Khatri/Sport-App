import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/create_club/componets/create_post.dart';
import 'package:shop_app/size_config.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chose Category'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  'Select your Sports Category',
                  style: headingStyle,
                ),
                Text('Which is following is your club about?'),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: [
                    Choice(ChipName: 'Select'),
                    Choice(ChipName: 'Tennies'),
                    Choice(ChipName: 'Circket'),
                    Choice(ChipName: 'FootBall'),
                    Choice(ChipName: 'Cycling'),
                    Choice(ChipName: 'Cards'),
                    Choice(ChipName: 'Fihing'),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                Container(
                  width: 250,
                  child: DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreatePost()));
                      //  Navigator.pushNamed(context, BirthDate.routeName);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Choice extends StatefulWidget {
  final String ChipName;
  //Choice({ Key? key this.Chip }) : super(key: key);
  Choice({Key? key, required this.ChipName}) : super(key: key);

  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  var _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(widget.ChipName),
      labelStyle: const TextStyle(
          color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Colors.blue[900],
    );
  }
}
