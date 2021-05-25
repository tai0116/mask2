import 'package:flutter/material.dart';
import 'bottom_navigation_screen.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage(this.title, this.screenIndex);
  final String title;
  final int screenIndex;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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

  int selectIndex = 0;
  List<Widget> widgetOptions = [
    NavBottom(key: UniqueKey(), title: '90mm × 165mm'),
    NavBottom(key: UniqueKey(), title: '90mm × 175mm'),
    NavBottom(key: UniqueKey(), title: '95mm × 173mm'),
    NavBottom(key: UniqueKey(), title: '95mm × 175mm'),
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
                      Text('少し小さい'),
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
                  onPressed: (screenIndex == 3)
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
