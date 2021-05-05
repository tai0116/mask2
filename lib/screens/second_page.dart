import 'package:flutter/material.dart';

import 'bottom_navigation_screen.dart';

class SecondPage extends StatefulWidget {
  SecondPage(this.title, this.screenIndex);
  String title;
  int screenIndex;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int selectedIndex = 0;
  List<Widget> widgetOptions = [
    NavBottom('1'),
    NavBottom('2'),
    NavBottom('3'),
    NavBottom('4'),
    NavBottom('5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: widgetOptions[widget.screenIndex],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: <Widget>[
              Placeholder(),
              Positioned(
                left: 30,
                bottom: 10,
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      if (widget.screenIndex == 0) {
                        null;
                      } else {
                        widget.screenIndex--;
                      }
                      if (widget.screenIndex == 0) {
                        widget.title = '105mm × 125mm';
                      } else if (widget.screenIndex == 1) {
                        widget.title = '105mm × 126mm';
                      } else if (widget.screenIndex == 2) {
                        widget.title = '105mm × 127mm';
                      } else if (widget.screenIndex == 3) {
                        widget.title = '105mm × 128mm';
                      }
                    });
                  },
                  icon: Icon(Icons.arrow_back),
                  label: Text('少し小さい'),
                ),
              ),
              Positioned(
                right: 30,
                bottom: 10,
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      if (widget.screenIndex == 3) {
                        null;
                      } else {
                        widget.screenIndex++;
                      }
                      if (widget.screenIndex == 0) {
                        widget.title = '105mm × 125mm';
                      } else if (widget.screenIndex == 1) {
                        widget.title = '105mm × 126mm';
                      } else if (widget.screenIndex == 2) {
                        widget.title = '105mm × 127mm';
                      } else if (widget.screenIndex == 3) {
                        widget.title = '105mm × 128mm';
                      }
                    });
                  },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('少し大きい'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
