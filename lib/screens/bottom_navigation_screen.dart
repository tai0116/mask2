import 'package:flutter/material.dart';

class NavBottom extends StatefulWidget {
  NavBottom(this.title);
  final String title;

  @override
  _NavBottomState createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  @override
  Widget build(BuildContext context) {
    List<String> imageOptions = [
      'https://images-na.ssl-images-amazon.com/images/I/71VYTG4cWcL._AC_SL1500_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/61aK43kYWEL._AC_SL1220_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/614lmM2oUbL._AC_SL1500_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/61EFJqodmbL._AC_SL1000_.jpg',
    ];

    List<String> amazonOptions = [
      'https://www.amazon.co.jp/dp/B08WX32NN7',
      'https://www.amazon.co.jp/dp/B014IDNT3E',
      'https://www.amazon.co.jp/dp/B08CF2TL9N',
      'https://www.amazon.co.jp/dp/B00EVGE28U',
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 1,
          children: List.generate(4, (index) {
            return InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(imageOptions[index]),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: Text(
                        'この商品の詳細をAmazonで確認する',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {}),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
