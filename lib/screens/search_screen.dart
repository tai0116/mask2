import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Icon(Icons.car_rental),
          //TODO searchの実装
          //TextField( #54
          // keyboardType: TextInputType.text),
          //style: TextStyle(fontSize:20.0),
          //controller: null, ←controllerは入力したものをアプリ上で使いたい時に使うもの//TODO 入力した文字を管理するTextEditingControllerの設定
        ],
      ),
    );
  }
}
