import 'package:flutter/material.dart';
import 'package:maps/history.dart';
import 'package:maps/map.dart';
import 'package:maps/profile.dart';


class BottomNav extends StatefulWidget {
  BottomNav({Key key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final tabs = [
    FireMap(),
    Center(child: Text('2')),
    History(),
    Profile(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home,),
                title: Text('Home'),
                backgroundColor: Colors.red
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pin_drop),
                title: Text('Places'),
                backgroundColor: Colors.red
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text('History'),
                backgroundColor: Colors.red
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.portrait),
                title: Text('Profile'),
                backgroundColor: Colors.red
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          body: tabs[_currentIndex],
    );
  }
}