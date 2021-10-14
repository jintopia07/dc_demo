import 'package:dreamcatcher_demo/screens/detail_screen.dart';
import 'package:dreamcatcher_demo/screens/home_screen.dart';
import 'package:dreamcatcher_demo/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class Launcher extends StatefulWidget {
  static const routeName = '/';

  @override
  _LauncherState createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  List<Widget> _pageWidget = <Widget>[
    HomeScreen(),
    Profile(),
    Detail(),
  ];
  List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Home'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.mic),
      title: Text('Profile'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.info),
      title: Text('About Us'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffffd156),
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
