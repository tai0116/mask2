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
      child: Column(children: [
        Center(
          child: Text('メーカーを入力してください', style: TextStyle(fontSize: 12.0)),
        ),
        TextField(
          onChanged: (text) {
            // onChangedは入力されている文字が変更するたびに呼ばれます
            // model.text = text;
            //model.search();
          },
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "検索",
          ),
          autofocus: true,
          keyboardType: TextInputType.text,
          style: TextStyle(fontSize: 20.0),
          controller: null,
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('検索結果がリストで表示されます'),
            ],
          ),
        ),
      ]),
    ));
  }
}
