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
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71VYTG4cWcL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08WX32NN7',
      size: "90mm × 111mm",
    ),
    Mask(
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61aK43kYWEL._AC_SL1220_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B014IDNT3E',
      size: "90mm × 111mm",
    ),
    Mask(
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/614lmM2oUbL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08CF2TL9N',
      size: "90mm × 111mm",
    ),
    Mask(
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61EFJqodmbL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B00EVGE28U',
      size: "90mm × 111mm",
    ),
    Mask(
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71VYTG4cWcL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08WX32NN7',
      size: "90mm × 112mm",
    ),
    Mask(
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61aK43kYWEL._AC_SL1220_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B014IDNT3E',
      size: "90mm × 112mm",
    ),
    Mask(
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/614lmM2oUbL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08CF2TL9N',
      size: "90mm × 112mm",
    ),
    Mask(
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61EFJqodmbL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B00EVGE28U',
      size: "90mm × 112mm",
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
