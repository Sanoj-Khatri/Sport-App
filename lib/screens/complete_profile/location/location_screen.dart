import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/location/componets/mapscreen.dart';

import 'componets/body.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter Location',
        ),
      ),
      body: Body(),
    );
  }
}
