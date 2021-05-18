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
    NavBottom(key: UniqueKey(), title: '120mm × 140mm'),
    NavBottom(key: UniqueKey(), title: '120mm × 141mm'),
    NavBottom(key: UniqueKey(), title: '120mm × 142mm'),
    NavBottom(key: UniqueKey(), title: '120mm × 143mm'),
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
