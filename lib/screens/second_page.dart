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
    NavBottom(key: UniqueKey(), title: '105mm × 125mm'),
    NavBottom(key: UniqueKey(), title: '105mm × 126mm'),
    NavBottom(key: UniqueKey(), title: '105mm × 127mm'),
    NavBottom(key: UniqueKey(), title: '105mm × 128mm'),
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
                  icon: Icon(Icons.arrow_back),
                  label: Text('少し小さい'),
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
