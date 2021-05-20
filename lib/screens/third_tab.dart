import 'package:flutter/material.dart';

import 'third_page.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  List<String> _texts = [
    "90mm × 165mm",
    "90mm × 175mm",
    "95mm × 173mm",
    "95mm × 175mm",
  ];

  List<int> _pageNumbers = [
    0,
    1,
    2,
    3,
  ];
  //=は「その中に入れるよ」的な働きをしてくれている（代入してくれている）

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
                        _texts[0], ThirdPage(_texts[0], _pageNumbers[0]))),
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
                        _texts[1], ThirdPage(_texts[1], _pageNumbers[1]))),
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
                        _texts[2], ThirdPage(_texts[2], _pageNumbers[2]))),
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
                        _texts[3], ThirdPage(_texts[3], _pageNumbers[3]))),
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
