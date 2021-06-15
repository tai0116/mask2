import 'package:flutter/material.dart';
import 'package:mask2_app/search/addmask.dart';

import 'package:url_launcher/url_launcher.dart';

class Mask {
  Mask({
    required this.amazonUrl,
    required this.imageUrl,
    required this.size,
    required this.maker,
    required this.target,
    required this.detail,
  });
  final String amazonUrl;
  final String imageUrl;
  final String size;
  final String maker;
  final String target;
  final String detail;

  factory Mask.fromMap(Map<String, dynamic> map) {
    return new Mask(
      imageUrl: map['imageUrl'] as String,
      amazonUrl: map['amazonUrl'] as String,
      size: map['size'] as String,
      maker: map['maker'] as String,
      target: map['target'] as String,
      detail: map['detail'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': this.imageUrl,
      'amazonUrl': this.amazonUrl,
      'size': this.size,
      'maker': this.maker,
      'target': this.target,
      'detail': this.detail,
    };
  }

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
  NavBottom({Key? key, required this.title, required this.target})
      : super(key: key);
  final String title;
  final String target;

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  List<Mask> maskList = [
    Mask(
      //快適ガード さわやかマスク こども用 30枚入　2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81r4z7MhRmL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07657TTVP',
      size: "80mm × 125mm",
      //本家でチェック済
      maker: "白元",
      detail:
          "ふんわり幅広耳ひもで、耳が痛くありません。口もと快適つるさら素材。0.1㎛の微粒子99％カットフィルター。幼稚園児～小学校低学年用のマスクです。",
      target: "こども",
    ),
    Mask(
      //　【Amazon限定ブランド】WMT こども マスク 12cm 不織布マスク 51枚 BFE99％ プレミアム品質 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61fMaiWrKtL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PCZG54Z',
      size: "80mm × 125mm",
      maker: "WMT",
      detail: "【 子供 サイズ/12.5x8cm】【17枚×3袋の合計51枚入り】【取り出しに便利なポケットティッシュタイプ】",
      target: "こども",
    ),
    Mask(
      //　【 マスコード / MASCODE】Sサイズマスク 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51pMbe8%2BwxL._AC_UL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/B08S2RVKQN',
      size: "85mm × 125mm",
      //本家でチェック済
      maker: "マスコード",
      detail: "平らで柔らかいゴム紐採用。耳が痛くなりにくい平らなゴム紐で、長時間の使用も快適。",
      target: "こども",
    ),

    Mask(
      //医食同源 立体型不織布マスク キッズ 50枚　2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/6160eRfyxcL._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRLYTZ',
      size: "85mm × 125mm",
      maker: "医食同源",
      detail:
          "立体構造の不織布マスク。3層の不織布フィルターでしっかりガード。形状保持ワイヤーで鼻のラインにぴったりフィット。やわらかい平ゴムを採用し、耳が痛くなりにくい。口元ゆったりの階段式プリーツ。",
      //本家で確認済
      target: "こども",
    ),
    Mask(
      //エルモア 不織布マスク 子供用 30枚入 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51zEkLhPWPL._AC_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08R7HX96Z',
      size: "90mm × 125mm",
      maker: "エルモア",
      detail:
          "安心の日本製。3層構造の立体プリーツタイプの不織布マスク。VFE・BFE・PFE99%カットフィルター採用!3層構造の高密度フィルターで空気中のウイルス飛沫・花粉などの侵入を防ぎます。ノーズフィット構造で花のラインにピッタリと合わせられます。子供用:約90mm×125mm",
      target: "こども",
    ),
    Mask(
      // プラスライフ 不織布マスク こどもサイズ 50枚入(個包装) ホワイト2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61syu8GBrYL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08N1KVKM3',
      size: "90mm × 125mm",
      maker: "プラスライフ",
      detail:
          "中心からプリーツを広げる形状にすることで、口元に空間を作り、息がしやすくなりました。また、耳紐は約6mm幅の平紐を使用しているため、長時間マスクを着用していても、痛くなりにくいです。",
      target: "こども",
    ),
    Mask(
      //マスク 子供用 50枚/10枚 柄豊富 カラー 使い捨て 高密度フィルター素材 三層構造不織布 キッズマスク 14*9cm 日本から発送 (男の子パターン, 50枚)　2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61HVWdU5KSL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08MDWN8VX',
      size: "90mm × 140mm",
      maker: "MERRY LIFE",
      detail:
          "肌に優しく心地よい装着感です。長時間の着用でも耳が痛くなりにくい伸縮性の高い耳かけ平ゴムを採用しています。口元や鼻筋にもこだわりの柔らか素材を使用しています。",
      target: "こども",
    ),
    Mask(
      //マスク 子供用 50枚 柄豊富 カラー 使い捨て 高密度フィルター素材 三層構造不織布 キッズマスク 14*9cm 日本から発送 (ブルー系柄, 50枚) 2021524
      imageUrl:
          'https://m.media-amazon.com/images/I/61pERbcLTOL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08TWKPMC8',
      size: "90mm × 140mm",
      maker: "MERRY LIFE",
      detail:
          "枚数：5柄＊10枚＝50枚。肌に優しく心地よい装着感です。長時間の着用でも耳が痛くなりにくい伸縮性の高い耳かけ平ゴムを採用しています。口元や鼻筋にもこだわりの柔らか素材を使用しています。",
      target: "こども",
    ),
    Mask(
      //スケーター 三層構造 不織布 マスク 子供 女性用 箱入り マイメロディ 30枚 MSKP30-A　2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61ebvO5eUOL._AC_SL1100_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07HYM7HTF',
      size: "90mm × 145mm",
      maker: "スケーター",
      detail:
          "口元にスペースを作り息苦しさをやわらげます。すきまを作らない立体カーブで顔にフィット。耳が痛くなりにくいやわらか素材の平ゴム使用。対象年齢・1才から3才。",
      target: "こども",
    ),
    Mask(
      //スケーター 三層構造 不織布 マスク 子供 箱入り プラレール 30枚 MSKP30-A 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71tfcUEcHoL._AC_SL1100_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07HYLT3DB',
      size: "90mm × 145mm",
      maker: "スケーター",
      detail:
          "口元にスペースを作り息苦しさをやわらげます。すきまを作らない立体カーブで顔にフィット。耳が痛くなりにくいやわらか素材の平ゴム使用。対象年齢・1才から3才。",
      target: "こども",
    ),
    Mask(
      //スケーター 三層構造 不織布 マスク 子供 女性用 箱入り はらぺこあおむし 30枚 MSKP30-A 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71SDrvNEZYL._AC_SL1100_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07HYJFK24',
      size: "90mm × 145mm",
      maker: "スケーター",
      detail:
          "口元にスペースを作り息苦しさをやわらげます。すきまを作らない立体カーブで顔にフィット。耳が痛くなりにくいやわらか素材の平ゴム使用。対象年齢・1才から3才。",
      target: "こども",
    ),
    Mask(
      //【全国マスク工業会正会員 個包装】3層不織布使い捨てマスク カケンPFE99%カット 女性子供サイズ 1箱50枚入【2020年9月から個包装・品質改良】2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71JyXR4Rm9L._AC_UL1329_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08R3JYJDP',
      size: "95mm × 140mm",
      maker: "Magfine",
      detail:
          "【製品特徴】 ３層構造不織布マスク(内層はメルトブローフィルター) 、柔らかいフラット耳ひも、お顔にぴったりノーズフィットワイヤー、息苦しさを解消したプリーツ加工。日本国内での検品、箱詰め実施品。",
      target: "こども",
    ),
    Mask(
      //【個包装 日本国内検品】マスク 小さめサイズ 50枚入 子供用 女性用 耳痛くならない 三層構造不織布 使い捨てマスク 白 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71iejzXauIL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08CNJXR99',
      size: "95mm × 145mm",
      maker: "Hellozebra",
      detail:
          "マスクは個包装になっておりますので、より衛生的で、より安全に持ち運びにも便利にお使いいただけます。広耳のマスクですので、痛くなりにくく、長時間の着用でも快適にご使用いただけます。",
      target: "こども",
    ),
    Mask(
      //[Amazon限定ブランド] HOC アッシュ グレー マスク 子供用 100枚 小さめサイズ 使い捨て 個包装 3層構造 不織布マスク グレーマスク グレー スモール スモールサイズ Sサイズ S 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61zvFmWFD-L._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08RHFG71G',
      size: "95mm × 145mm",
      maker: "HOC",
      detail:
          "マスクは１つ１つ個包装になっていますので、常に清潔に保つことが出来ます。 また携帯に便利で、旅行や出張先へ持ち運びできます。 個包装でかさばらないので鞄やポーチの中に入れたり、通勤、通学の時にも持ち運びが簡単です。",
      target: "こども",
    ),
    ////////////
    Mask(
      //[Amazonブランド]Presto! マスク 小さめサイズ PM2.5対応 200枚(50枚×4パック) 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91hLsBL5b0L._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07YY9ZD7M',
      size: "90mm × 145mm",
      maker: "Presto",
      detail:
          "ごわつきにくい「やわらか不織布」のマスクです。耳ひもにはサラッとしたつけ心地の「やわらか幅広ゴム」を使用し、耳への負担を軽減。長時間の使用でも、耳が痛くなりにくいのが特徴です。",
      target: "小さい",
    ),
    Mask(
      //マスク 個包装 30枚 小さめサイズ 145mm 使い捨て 立体型マスク 不織布マスク ほこり 花粉対策 飛沫防止 (1)　2021528
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61PPqKAgPPL._AC_SL1001_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08KXT3GYS',
      size: "90mm × 145mm",
      maker: "TERUKA",
      detail: "部立体感アップ。口紅が付きにくい。呼吸がより快適",
      target: "小さい",
    ),
    Mask(
      //医食同源 立体型不織布マスク 小さめ 50枚
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61V3jCHsqsL._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRF6KG',
      size: "95mm × 145mm",
      maker: "医食同源",
      detail: "【ノーズフィット】マスクの密着性を高め、メガネのくもりを軽減",
      target: "小さい",
    ),
    Mask(
      //ピップ プリーツガード 呼吸快適マスク 30枚入 小さめ 個別包装　2021528
      imageUrl:
          'https://m.media-amazon.com/images/I/71dDVS5etiL._AC_SL1357_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PYPDNTF',
      size: "95mm × 145mm",
      maker: "ピップヘルス",
      detail:
          "【商品情報】1.携帯に便利で衛生的な個別包装タイプ。2.くちもとPEワイヤー採用。マスクが口に張り付くのを防ぎ、くちもとの空間をキープする。3.耳への負担をやわらげる平ゴムひもを採用。4.花粉・ウイルス飛沫・空気中の微粒子99%カットフィルター採用。5.3段プリーツタイプ立体構造になっているので、鼻や口の息苦しさを軽減。あごまでしっかりカバー。",
      target: "小さい",
    ),
    Mask(
      //【日本国内検品 広耳】マスク 小さめ PFE BFE VFE 99%以上 200枚入 個包装 子供用 女性用 こども用 耳が痛くならない 不織布 使い捨てマスク 飛沫防止99% PM2.5 風邪予防 防塵 花粉対策 2021528
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71tVffyPS9L._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08MPXHLVV',
      size: "90mm × 150mm",
      maker: "Hellozebra",
      detail:
          "【耳が痛くなりにくい】耳が痛くなりにくいやわらかい平ゴムを採用しております。伸縮性のある15mm幅の耳紐で耳への負担を軽減します。",
      target: "小さい",
    ),
    Mask(
      //ナノAG+AIRマスク (小さめサイズ 50枚入)　2021528
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61hk4DF1O8L._AC_UL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PXNCLDP',
      size: "95mm × 150mm",
      maker: "ナノAG+AIRマスク",
      detail:
          "「銀イオンナノAg」を練り込んだナノAG高性能フィルターで0.1μmの微粒子や花粉、BFE、VFE、PFE、紫外線、黄砂を99％以上カット。更に高い抗菌・防臭性能を実現。商品性能は第三者機関の一般財団法人カケンテストセンターにて検証済",
      target: "小さい",
    ),
    Mask(
      //大人用マスク 50枚入り 春夏シリーズ 不織布マスク 花粉 防塵 使い捨てマスク 風邪 pm2.5 ウィルス ホコリ 3層フィルター カラーマスク(新緑50枚, 女性用サイズ16*9㎝) 2021528
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51Q40Zb0qIL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B093H2S7CN',
      size: "90mm × 160mm",
      //TODO 表記サイズから許容範囲プラマイ５
      maker: "MERRY LIFE",
      detail:
          "立体プリーツ加工、しっかりと顔の形にフィットする同時に、息苦しさを軽減。耳ひもは痛くなりにくいソフトなゴム素材を利用しております。",
      target: "小さい",
    ),
    ////////////
    Mask(
      //(PM2.5対応)快適ガードさわやかマスク レギュラーサイズ 30枚入
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/616ZDqygl6L._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B0141ZPADQ',
      size: "90mm × 165mm",
      maker: "",
      detail: "",
      target: "ふつう",
    ),
    Mask(
      //[Amazon限定ブランド] NAGAHIRO マスク 日本製 ウィルス 飛沫 微粒子 花粉99%カット 高性能フィルター採用 SEK認証 抗菌 防臭 「全国マスク工業会会員」 平ゴム 耳に優しい 不織布 マスク 普通サイズホワイト 7枚入り 4セット（28枚)
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61TD7PJ9GUS._AC_SL1012_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B093G94DQQ',
      size: "90mm × 175mm",
      maker: "",
      detail: "",
      target: "ふつう",
    ),
    Mask(
      //大王製紙 エリエール ハイパーブロックマスク ウイルスブロック ふつうサイズ 50枚入（日本製）
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81UdjYQp4AL._AC_UL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08W2JX5XY',
      size: "90mm × 175mm",
      maker: "",
      detail: "",
      target: "ふつう",
    ),
    Mask(
      //GOJAPAN マスク 210枚入 (7枚×30袋) 1袋1週間分 BFE VFE PFE 99%カットフィルター採用 4層構造 ふつうサイズ 呼吸しやすい
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/910YXdXgIkL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08MQGYVG4',
      size: "95mm × 173mm",
      maker: "",
      detail: "",
      target: "ふつう",
    ),
    Mask(
      //医食同源 立体型不織布マスク ふつう 50枚
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71UHQKS9C6L._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRF6KH',
      size: "95mm × 175mm",
      maker: "",
      detail: "",
      target: "ふつう",
    ),
    Mask(
      //Coolth Style 日本製 不織布マスク 個包装 50枚 使い捨てマスク 【日本国内カケンテスト認証済】高機能 日本製マスク 普通サイズ：175㎜×95㎜ (不織布マスク)
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81uz1uSNIvL._AC_UL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08WRXXB4P',
      size: "95mm × 175mm",
      maker: "",
      detail: "",
      target: "ふつう",
    ),
  ];

  List<Mask> maskListWithSize = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // ここで絞り込み処理を書く
    maskListWithSize = maskList
        .where(
            (mask) => mask.size == widget.title && mask.target == widget.target)
        .toList();

    setState(() {});
    print(maskListWithSize.length);
  }

  registerMasks() {
    for (int i = 0; i < maskList.length; i++) {
      final x = maskList[i];
      databaseManager.insertMask(x);
    }
  }

  final databaseManager = DatabaseManager();

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
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          title: Text(maskListWithSize[index].detail),
                          actions: <Widget>[
                            TextButton(
                              child: Text('もどる'),
                              onPressed: () {
                                Navigator.of(context).pop();
                                //TODO popの中にcontextを入れる必要はない？挙動が変化していない
                              },
                            )
                          ]);
                    });
              },
              child: Container(
                padding: EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(maskListWithSize[index].imageUrl),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 85.0),
                      child: SizedBox(
                        width: 330,
                        height: 40,
                        child: ElevatedButton(
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
                            databaseManager.insertMask(registerMasks());
                            maskListWithSize[index].launchURL();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
