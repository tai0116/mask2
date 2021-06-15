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
    NavBottom(key: UniqueKey(), title: '80mm × 125mm', target: 'こども'),
    NavBottom(key: UniqueKey(), title: '85mm × 125mm', target: 'こども'),
    NavBottom(key: UniqueKey(), title: '90mm × 125mm', target: 'こども'),
    NavBottom(key: UniqueKey(), title: '90mm × 140mm', target: 'こども'),
    NavBottom(key: UniqueKey(), title: '90mm × 145mm', target: 'こども'),
    NavBottom(key: UniqueKey(), title: '95mm × 140mm', target: 'こども'),
    NavBottom(key: UniqueKey(), title: '95mm × 145mm', target: 'こども'),
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
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: FloatingActionButton.extended(
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
                  label: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.arrow_back),
                      ),
                      Text('少し小さい')
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: FloatingActionButton.extended(
                  heroTag: ('larger'),
                  backgroundColor: Colors.blueGrey.shade400,
                  foregroundColor: Colors.white,
                  onPressed: (screenIndex == 6)
                      ? null
                      : () {
                          setState(() {
                            screenIndex++;
                          });
                        },
                  label: Row(
                    children: [
                      Text('少し大きい'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
