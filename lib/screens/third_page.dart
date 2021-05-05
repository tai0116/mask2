import 'package:flutter/material.dart';

import 'bottom_navigation_screen.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage(this.title);
  final String title;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int selectedIndex = 0;
  List<Widget> widgetOptions = [
    NavBottom('1'),
    NavBottom('2'),
    NavBottom('3'),
    NavBottom('4'),
    NavBottom('5'),
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
        title: Text(widget.title),
      ),
      body: Center(
        child: widgetOptions[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: '少し小さい',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: '少し大きい',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            if (index == 0) {
              selectedIndex--;
            } else {
              selectedIndex++;
            }
          });
        },
      ),
    );
  }
}
