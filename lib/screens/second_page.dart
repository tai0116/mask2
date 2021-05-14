import 'package:flutter/material.dart';

import 'bottom_navigation_screen.dart';

class SecondPage extends StatefulWidget {
  SecondPage(this.title, this.screenIndex);
  final String title;
  final int screenIndex;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String title = '';
  int screenIndex = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      title = widget.title;
      screenIndex = widget.screenIndex;
    });
  }

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
        title: Text(title),
      ),
      body: Center(
        child: widgetOptions[screenIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: <Widget>[
              FloatingActionButton.extended(
                heroTag: ('smaller'),
                backgroundColor: Colors.blueGrey.shade400,
                foregroundColor: Colors.white,
                onPressed: (screenIndex == 0)
                    ? null
                    : () {
                        setState(() {
                          screenIndex--;
                          if (screenIndex == 0) {
                            title = '105mm × 125mm';
                          } else if (screenIndex == 1) {
                            title = '105mm × 126mm';
                          } else if (screenIndex == 2) {
                            title = '105mm × 127mm';
                          } else if (screenIndex == 3) {
                            title = '105mm × 128mm';
                          }
                        });
                      },
                icon: Icon(Icons.arrow_back),
                label: Text('少し小さい'),
              ),
              Spacer(),
              FloatingActionButton.extended(
                heroTag: ('larger'),
                backgroundColor: Colors.blueGrey.shade400,
                foregroundColor: Colors.white,
                onPressed: () {
                  setState(() {
                    if (screenIndex == 3) {
                      null;
                    } else {
                      screenIndex++;
                    }
                    if (screenIndex == 0) {
                      title = '105mm × 125mm';
                    } else if (screenIndex == 1) {
                      title = '105mm × 126mm';
                    } else if (screenIndex == 2) {
                      title = '105mm × 127mm';
                    } else if (screenIndex == 3) {
                      title = '105mm × 128mm';
                    }
                  });
                },
                icon: Icon(Icons.arrow_forward),
                label: Text('少し大きい'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
