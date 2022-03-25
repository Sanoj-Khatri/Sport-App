import 'package:flutter/material.dart';

class UpcomingGames extends StatefulWidget {
  const UpcomingGames({Key? key}) : super(key: key);

  @override
  State<UpcomingGames> createState() => _UpcomingGamesState();
}

class _UpcomingGamesState extends State<UpcomingGames> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          height: 200,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('2:55 pm'), Icon(Icons.notifications)],
              ),
              Text(
                'Club Name - Game name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Hosted by: Ali Ahmed ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                  '''Game Description: Aliquam faucibus, odio nec commodo aliquam, neque felis placerat dui, a portal ante letus dapibus est. Aliquam a bibendum mi.''')
            ],
          )),
    );
  }
}
