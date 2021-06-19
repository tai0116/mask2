import 'package:flutter/material.dart';
import 'package:mask2_app/detail_page.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> makers = [
    'フィッティ', //
    'スケーター', //
    'WMT', //
    'マスコード', //
    '医食同源', //
    'エルモア', //
    'プラスライフ', //
    'MERRY LIFE', //
    '白元', //
    'Magfine', //
    'Hellozebra', //
    'HOC', //
    'アイリスオーヤマ', //
    'Presto', //
    'TERUKA', //
    'ピップヘルス', //
    'ナノAG+AIRマスクE', //
    'MERRY LIFE', //
    '快適ガードプロ', //
    'NAGAHIRO', //
    '大王製紙', //
    'GOJAPAN', //
    'Coolth Style', //
    'SETSUGEN', //
    '3AIR', //
  ];
  List<String> visibleMakers = [];

  // テキストフィールドのコントローラー設定
  // コントローラーの宣言
  final TextEditingController _selectMakerController = TextEditingController();

  // コントローラーの初期化
  void initState() {
    visibleMakers = makers;
    super.initState();
  }

  // statefulオブジェクトが削除されるときに、参照を削除してくれる
  void dispose() {
    super.dispose();
    _selectMakerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Center(
              child: Text('メーカーを入力してください', style: TextStyle(fontSize: 12.0)),
            ),
            TextField(
              controller: _selectMakerController,

              onChanged: (text) {
                visibleMakers =
                    makers.where((maker) => maker.contains(text)).toList();
                setState(() {});
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "検索",
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    setState(() {
                      this._selectMakerController.clear();
                    });
                  },
                ),
              ),

              autofocus: true,
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              //controller: null,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(visibleMakers[index]),
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MaskDetail(visibleMakers[index]),
                              ));
                        });
                      },
                    ),
                  );
                },
                itemCount: visibleMakers.length,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 16.0, right: 0.0, bottom: 0.0, left: 0.0),
              child: SizedBox(
                width: 360,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown.shade100),
                    ),
                    child: Text('検索'),
                    onPressed: () {
                      // 変数の変化をリアルタイムに通知する
                      setState(() {
                        //何かしらの入力があるときだけ実行
                        //if (_selectMakerController.text.length > 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MaskDetail(_selectMakerController.text),
                            ));
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
