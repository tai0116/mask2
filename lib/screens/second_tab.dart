import 'package:flutter/material.dart';

import 'second_page.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List<String> _texts = [
    " 105mm × 125mm",
    " 105mm × 126mm",
    " 105mm × 127mm",
    " 105mm × 128mm",
  ];

  List<int> _pageNumbers = [
    0,
    1,
    2,
    3,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all((8.0)),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 1,
                    child: _selectButton(
                        _texts[0], SecondPage(_texts[0], _pageNumbers[0]))),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 1,
                    child: _selectButton(
                        _texts[1], SecondPage(_texts[1], _pageNumbers[1]))),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 1,
                    child: _selectButton(
                        _texts[2], SecondPage(_texts[2], _pageNumbers[2]))),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 1,
                  child: _selectButton(
                      _texts[3], SecondPage(_texts[3], _pageNumbers[3])),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectButton(String buttonText, Widget page) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white30),
        ),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 15.0),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
      ),
    );
  }
}
