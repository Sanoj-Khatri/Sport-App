import 'package:flutter/material.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class PrivacyOption extends StatefulWidget {
  const PrivacyOption({Key? key}) : super(key: key);

  @override
  _PrivacyOptionState createState() => _PrivacyOptionState();
}

class _PrivacyOptionState extends State<PrivacyOption> {
  Item? selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Priavte',
        Icon(
          Icons.lock,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Public',
        Icon(
          Icons.public,
          color: const Color(0xFF167F67),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DropdownButton<Item>(
        hint: Text("Select item"),
        value: selectedUser,
        onChanged: (Item? Value) {
          setState(() {
            selectedUser = Value;
          });
        },
        items: users.map((Item user) {
          return DropdownMenuItem<Item>(
            value: user,
            child: Row(
              children: <Widget>[
                user.icon,
                SizedBox(
                  width: 200,
                ),
                Text(
                  user.name,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
