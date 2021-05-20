import 'package:flutter/material.dart';
import 'package:mask2_app/detail_page.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> makers = [
    'スケーター',
    'ルカ LOOKA',
    '虎屋',
    'パインクリエイト',
    '三次元',
    '横井定 ヨコイサダ',
    '美研繊維',
    'ピュアスマイル',
    'ユニチャーム',
    '白元',
    'バンダイ BANDAI',
    'エニー ANYe',
    ' DR.C医薬 ディーアールシーイヤク',
    'グローバルジャパン',
    'アミナコレクション Kahiko カヒコ',
    'BLOOM LuXE',
    '小松マテーレ',
    'エイトワール EITORE',
    'クー COO',
    'セイル',
    'サンエックス San-X',
    'FYDELITY',
    '玉川衛材 フィッティ',
    'ヒサゴ HISAGO',
    'コバオリ KOBAORI',
    'サクラスリングプロジェクト Sakura Sling project',
    'テクナード',
    'コーワ KOWA',
    '原田産業',
    'ミック オールクール ALLCOOL',
    'プレーリードッグ',
    'クールンビオ COOLNBIO',
    'ドムドムハンバーガー DOMDOM',
    'SPICE スパイス',
    'アミナコレクション カヤ',
    'センバドー',
    'サンスマイル マスキス sun smile Maskiss',
    'アイリスオーヤマ IRISOHYAMA',
    '玉川衛材',
    'アミナコレクション チャイハネ',
    'ユアーショップ',
    'サンスター文具 sun-star',
    'レッドスパイス RED SPYCE',
    'BMC ビーエムシー',
    'アズフィット',
    'ciel シエル',
    'ワイティーエス YTS',
    'バイナー VINER',
    'マテリアルリンク Material LINK',
    'ショウワノート',
    'サンタン SANTAN',
    '絹屋',
    'アッソブ AS2OV',
    'a-freak エーフリーク',
    'りぶはあと',
    'JUNKADO South Quay サウスキー',
    'アルファックス alphax',
    'ファイン',
    'サンスマイル sun smile',
  ];
  late List<String> visibleMakers;

  @override
  void initState() {
    visibleMakers = makers;
  }

  // todoの一覧リスト変数を用意
  //List<String> makerList = [];

  // テキストフィールドのコントローラー設定
  // コントローラーの宣言
  late TextEditingController _selectMakerController;

  // コントローラーの初期化
  //void initState() {
  //super.initState();
  //_selectMakerController = TextEditingController();
  //}

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
              onChanged: (text) {
                visibleMakers =
                    makers.where((maker) => maker.contains(text)).toList();
                setState(() {});
              },

              // onChangedは入力されている文字が変更するたびに呼ばれます
              // model.text = text;
              //model.search();
              //},
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "検索",
              ),
              autofocus: true,
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              //controller: null,
            ),
            //Container(
            //padding: EdgeInsets.all(16.0),
            //child: Column(
            //children: [
            //Text('検索結果がリストで表示されます'),
            //],
            //),
            //),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(visibleMakers[index]),
                  );
                },
                itemCount: visibleMakers.length,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 16.0, right: 0.0, bottom: 30.0, left: 0.0),
              child: SizedBox(
                width: 360,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.brown.shade100),
                  ),
                  child: Text('検索'),
                  onPressed: () {
                    // 変数の変化をリアルタイムに通知する
                    //setState(
                    // () {
                    // 何かしらの入力があるときだけ実行
                    // if (_selectMakerController.text.length > 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MaskDetail()),
                    );
                    //}
                  },
                  // );
                  //},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
