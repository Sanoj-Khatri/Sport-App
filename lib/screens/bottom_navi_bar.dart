import 'package:flutter/material.dart';
import 'package:shop_app/screens/Explore_Screen/explore_screen.dart';
import 'package:shop_app/screens/Game_flow/game_flow_screen.dart';

import 'home_screen/home_screen.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    ExploreScreen(),
    GameFlowScreen(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,

          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Explore',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_month),
              label: 'Calender',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.grey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: Colors.grey,
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          // currentIndex: _selectedIndex,
          // selectedItemColor: Colors.black,
          // iconSize: 30,
          // onTap: _onItemTapped,
          // elevation: 5),
        ));
  }
}
