import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Mask {
  Mask({
    required this.amazonUrl,
    required this.imageUrl,
    required this.size,
  });
  final String amazonUrl;
  final String imageUrl;
  final String size;

  /// 関数ももたせられるよ
  /// この関数を呼べばamazonUrlで指定されたサイトが開く
  Future<void> launchURL() async {
    if (await canLaunch(amazonUrl)) {
      await launch(amazonUrl);
    } else {
      throw 'Could not launch $amazonUrl';
    }
  }
}

class NavBottom extends StatefulWidget {
  NavBottom({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  List<Mask> maskList = [
    Mask(
      //マスク 使い捨て 50枚 ＋1枚 BFE99％ プレミアム品質 いつものマスク
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/6182ji60cnL._AC_UL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08ZMQX7DM',
      size: "80mm × 125mm",
    ),
    Mask(
      //医食同源 立体型不織布マスク キッズ 50枚
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/6160eRfyxcL._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRLYTZ',
      size: "85mm × 125mm",
    ),
    Mask(
      //エルモア 不織布マスク 子供用 30枚入
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51zEkLhPWPL._AC_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08R7HX96Z',
      size: "90mm × 125mm",
    ),
    Mask(
      //マスク 子供用 50枚 柄豊富 カラー 使い捨て 高密度フィルター素材 三層構造不織布 キッズマスク 14*9cm 日本から発送 (ブルー系柄, 50枚)
      imageUrl:
          'https://m.media-amazon.com/images/I/61pERbcLTOL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08TWKPMC8',
      size: "90mm × 140mm",
    ),
    Mask(
      //スケーター 三層構造 不織布 マスク 子供 女性用 箱入り マイメロディ 30枚 MSKP30-A
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61ebvO5eUOL._AC_SL1100_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07HYM7HTF',
      size: "90mm × 145mm",
    ),
    Mask(
      //スケーター 三層構造 不織布 マスク 子供 箱入り プラレール 30枚 MSKP30-A
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71tfcUEcHoL._AC_SL1100_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07HYLT3DB',
      size: "90mm × 145mm",
    ),
    Mask(
      //スケーター 三層構造 不織布 マスク 子供 女性用 箱入り はらぺこあおむし 30枚 MSKP30-A
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71SDrvNEZYL._AC_SL1100_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07HYJFK24',
      size: "90mm × 145mm",
    ),
    Mask(
      //【全国マスク工業会正会員 個包装】3層不織布使い捨てマスク カケンPFE99%カット 女性子供サイズ 1箱50枚入【2020年9月から個包装・品質改良】
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71JyXR4Rm9L._AC_UL1329_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08R3JYJDP',
      size: "95mm × 140mm",
    ),
    Mask(
      //【個包装 日本国内検品】マスク 小さめサイズ 50枚入 子供用 女性用 耳痛くならない 三層構造不織布 使い捨てマスク 白
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71iejzXauIL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08CNJXR99',
      size: "95mm × 145mm",
    ),
    ////////////
    Mask(
      //マスク 個包装 30枚 小さめサイズ 145mm 使い捨て 立体型マスク 不織布マスク ほこり 花粉対策 飛沫防止 (1)
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61PPqKAgPPL._AC_SL1001_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08KXT3GYS',
      size: "90mm × 145mm",
    ),
    Mask(
      //医食同源 立体型不織布マスク 小さめ 50枚
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61V3jCHsqsL._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRF6KG',
      size: "95mm × 145mm",
    ),
    Mask(
      //ピップ プリーツガード 呼吸快適マスク 30枚入 小さめ 個別包装
      imageUrl:
          'https://m.media-amazon.com/images/I/71dDVS5etiL._AC_SL1357_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PYPDNTF',
      size: "95mm × 145mm",
    ),
    Mask(
      //【日本国内検品 広耳】マスク 小さめ PFE BFE VFE 99%以上 200枚入 個包装 子供用 女性用 こども用 耳が痛くならない 不織布 使い捨てマスク 飛沫防止99% PM2.5 風邪予防 防塵 花粉対策
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71tVffyPS9L._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08MPXHLVV',
      size: "90mm × 150mm",
    ),
    Mask(
      //ナノAG+AIRマスク (小さめサイズ 50枚入)
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61hk4DF1O8L._AC_UL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PXNCLDP',
      size: "95mm × 150mm",
    ),
    Mask(
      //大人用マスク 50枚入り 春夏シリーズ 不織布マスク 花粉 防塵 使い捨てマスク 風邪 pm2.5 ウィルス ホコリ 3層フィルター カラーマスク(新緑50枚, 女性用サイズ16*9㎝)
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51Q40Zb0qIL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B093H2S7CN',
      size: "90mm × 160mm",
    ),
  ];

  List<Mask> maskListWithSize = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // ここで絞り込み処理を書く
    maskListWithSize =
        maskList.where((mask) => mask.size == widget.title).toList();
    setState(() {});
    print(maskListWithSize.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 1,
          children: List.generate(maskListWithSize.length, (index) {
            return InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(maskListWithSize[index].imageUrl),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.brown.shade100),
                    ),
                    child: Text(
                      'この商品の詳細をAmazonで確認する',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    onPressed: () {
                      maskListWithSize[index].launchURL();
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
