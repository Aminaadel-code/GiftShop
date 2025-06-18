import 'package:flutter/material.dart';

import 'checkOut.dart';
import 'Drawer.dart';
import 'lib/home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabBarPage(),
    );
  }
}

class MyTabBarPage extends StatefulWidget {
  @override
  _MyTabBarPageState createState() => _MyTabBarPageState();
}

class _MyTabBarPageState extends State<MyTabBarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    home(),
    CheckOut (),
    //Info(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.pink[100],
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_sharp), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: ''),
        ],
      ),
    );
  }
}
