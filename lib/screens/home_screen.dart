import 'package:flutter/material.dart';

import 'first_tab.dart';
import 'second_tab.dart';
import 'third_tab.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(text: 'こども'),
              Tab(text: '小さい'),
              Tab(text: 'ふつう'),
            ],
          ),
          body: TabBarView(children: [
            First(),
            Second(),
            Third(),
          ]),
        ));
  }
}
