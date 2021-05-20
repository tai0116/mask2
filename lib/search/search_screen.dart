import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Center(
              child: Text('メーカー名を入力してください', style: TextStyle(fontSize: 12.0)),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: null,
            ),
          ],
        ),
      ),
    );
  }
}
