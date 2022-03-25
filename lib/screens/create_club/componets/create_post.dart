import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/create_club/componets/flow5.dart';

import '../../../size_config.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post'),
      ),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                'Create Post',
                style: headingStyle,
              ),
              Text(
                  'Welcome new members with a post to set the tone of your club'),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              Container(
                // margin: const EdgeInsets.all(15.0),
                // padding: const EdgeInsets.all(180.0),
                width: 300,
                height: 350,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Gamertag'),
                              Text('Host of Club X '),
                              SizedBox(
                                height: getProportionateScreenHeight(15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                width: 250,
                child: DefaultButton(
                  text: "Continue",
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PreviewProfileScreen()));
                    //  Navigator.pushNamed(context, BirthDate.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
