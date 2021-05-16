import 'package:flutter/material.dart';

import 'bottom_navigation_screen.dart';

//このFirstPageに共通する部分は共通させて、変更したい部分は切り出す。そうすれば、共通して変更したい部分が出てきた時に一気に変更することができる。

class FirstPage extends StatefulWidget {
  FirstPage(this.title, this.screenIndex);
  final String title;
  final int screenIndex;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
    NavBottom(key: UniqueKey(), title: '90mm × 111mm'),
    NavBottom(key: UniqueKey(), title: '90mm × 112mm'),
    NavBottom(key: UniqueKey(), title: '90mm × 113mm'),
    NavBottom(key: UniqueKey(), title: '90mm × 114mm'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: (screenIndex == 3)
                    ? null
                    : () {
                        setState(() {
                          screenIndex++;
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
