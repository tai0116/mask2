import 'package:flutter/material.dart';

import 'first_page.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<String> _texts = [
    " 80mm × 125mm",
    " 85mm × 125mm",
    " 90mm × 125mm",
    " 90mm × 140mm",
    " 90mm × 145mm",
    " 95mm × 140mm",
    " 95mm × 145mm",
  ];

  List<int> _pageNumbers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
  ];
  //　＝　は「その中に入れるよ」的な働きをしてくれている（代入してくれている）　＝は←みたいなイメージ
  //お絵描きメソッドであるbuildメソッドの中で変数（変わる値）を使う時には、＝　が必要になってくるよね

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
                        _texts[0], FirstPage(_texts[0], _pageNumbers[0]))),
                //ここでやっていることはsellectButtonに(_texts[0], FirstPage(_texts[0])という引数（パラメータ）を持たせているということ？
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
                        _texts[1], FirstPage(_texts[1], _pageNumbers[1]))),
                //ここでやっていることはsellectButtonに(_texts[0], FirstPage(_texts[0])という引数（パラメータ）を持たせているということ？
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
                      _texts[2], FirstPage(_texts[2], _pageNumbers[2])),
                )
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
                      _texts[3], FirstPage(_texts[3], _pageNumbers[3])),
                )
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
                      _texts[4], FirstPage(_texts[4], _pageNumbers[4])),
                )
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
                      _texts[5], FirstPage(_texts[5], _pageNumbers[5])),
                )
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
                      _texts[6], FirstPage(_texts[6], _pageNumbers[6])),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Widget _selectButton(String buttonText, Widget page)と書くことによって、この_selectButtonの変更したい部分だけ、書き出すことができる。
  Widget _selectButton(String buttonText, Widget page) {
    //widget（raisedbuttonでも可）は戻り値の型　_selectButtonはメソッドの名前　Stringは引数（パラメータ）の型　buttonTextは名前
    return Container(
      //戻り値（今回で言えば、widgetがあるということは、returnが必要となる。）
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
