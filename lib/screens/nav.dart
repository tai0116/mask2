import 'dart:ui';

import 'package:flutter/material.dart';

import 'home_screen.dart';
import '../search/search_screen.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;
  List widgetOptions = [
    Home(),
    Search(),
  ];

  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaskMe',
            style: TextStyle(fontFamily: 'Billabong', fontSize: 40.0)),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
      ),
    );
  }
}
