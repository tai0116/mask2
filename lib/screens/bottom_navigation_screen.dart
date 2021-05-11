import 'package:flutter/cupertino.dart';
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
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 1,
          children: List.generate(100, (index) {
            return InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  'Item $index',
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
