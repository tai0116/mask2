import 'package:flutter/material.dart';

class NavBottom extends StatefulWidget {
  NavBottom(this.title);
  final String title;

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Divider(
            color: Colors.black,
            indent: 8.0,
            endIndent: 8.0,
          ),
          Text(widget.title),
        ],
      ),
    );
  }
}
