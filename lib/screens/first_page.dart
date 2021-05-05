import 'package:flutter/material.dart';

import 'bottom_navigation_screen.dart';

//このFirstPageに共通する部分は共通させて、変更したい部分は切り出す。そうすれば、共通して変更したい部分が出てきた時に一気に変更することができる。

class FirstPage extends StatefulWidget {
  FirstPage(this.title, this.screenIndex);
  String title;
  int screenIndex;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;
  List<Widget> widgetOptions = [
    NavBottom('1'),
    NavBottom('2'),
    NavBottom('3'),
    NavBottom('4'),
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
                        widget.title = '90mm × 111mm';
                      } else if (widget.screenIndex == 1) {
                        widget.title = '90mm × 112mm';
                      } else if (widget.screenIndex == 2) {
                        widget.title = '90mm × 113mm';
                      } else if (widget.screenIndex == 3) {
                        widget.title = '90mm × 114mm';
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
                        widget.title = '90mm × 111mm';
                      } else if (widget.screenIndex == 1) {
                        widget.title = '90mm × 112mm';
                      } else if (widget.screenIndex == 2) {
                        widget.title = '90mm × 113mm';
                      } else if (widget.screenIndex == 3) {
                        widget.title = '90mm × 114mm';
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
