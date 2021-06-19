import 'package:flutter/material.dart';

import 'screens/bottom_navigation_screen.dart';

class MaskDetail extends StatefulWidget {
  MaskDetail(this.maker);
  final String maker;

  @override
  _MaskDetailState createState() => _MaskDetailState();
}

class _MaskDetailState extends State<MaskDetail> {
  List<Mask> maskList = [
    Mask(
      name: 'フィッティ 7DAYSマスクEXプラス ホワイト キッズサイズ 100枚入', //2021
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/710paeH7MtL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08KXD134P',
      size: '80mm × 125mm',
      maker: "フィッティ",
      detail:
          "100枚入 (50枚入中箱×２箱）耳にやさしい幅広ふわふわゴムを採用！長時間着けても耳が痛くなりにくい！3層構造で花粉・ほこり等をしっかりガード！",
      target: "こども",
    ),
    Mask(
      name: '快適ガード さわやかマスク こども用 30枚入', //2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81r4z7MhRmL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B07657TTVP',
      size: '80mm × 125mm', //本家でチェック済
      maker: "白元",
      detail:
          "ふんわり幅広耳ひもで、耳が痛くありません。口もと快適つるさら素材。0.1㎛の微粒子99％カットフィルター。幼稚園児～小学校低学年用のマスクです。",
      target: "こども",
    ),
    Mask(
      name: 'フィッティ 7DAYS マスク 100枚入 キッズサイズ ホワイト', // 2021619
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91Mtf3rpxsL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B016DCAOQI',
      size: "80mm × 125mm",
      maker: "フィッティ",
      detail:
          "【特長】●不織布の三層式フィルタで花粉・ホコリをしっかりガード。●マスク両サイドの加工で顔のラインにジャストフィット。●立体加工なので鼻や口を圧迫しません。不快な息苦しさを解消しました。●耳かけには耳にやさしいゴムを使用。●携帯に便利な個別包装。",
      target: "こども",
    ),
    Mask(
      name:
          'WMT DISPOSABLE MASK こども マスク 12cm 不織布マスク 51枚 BFE99％ プレミアム品質', // 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/716svZ0z3NL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PCZ843S',
      size: "80mm × 125mm",
      maker: "WMT",
      detail: "【 子供 サイズ/12.5x8cm】【17枚×3袋の合計51枚入り】【取り出しに便利なポケットティッシュタイプ】",
      target: "こども",
    ),
    Mask(
      name: '【マスコード / MASCODE】不織布マスク　Sサイズ', // 2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/51H%2BZaJYabS._AC_UL1182_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/B0969J3V9N',
      size: "85mm × 125mm", //本家でチェック済
      maker: "マスコード",
      detail: "平らで柔らかいゴム紐採用。耳が痛くなりにくい平らなゴム紐で、長時間の使用も快適。",
      target: "こども",
    ),
    Mask(
      name: '立体型不織布マスク キッズ 50枚', //　2021524
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/6160eRfyxcL._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRLYTZ',
      size: "85mm × 125mm",
      maker: "医食同源",
      detail:
          "立体構造の不織布マスク。3層の不織布フィルターでしっかりガード。形状保持ワイヤーで鼻のラインにぴったりフィット。やわらかい平ゴムを採用し、耳が痛くなりにくい。口元ゆったりの階段式プリーツ。", //本家で確認済
      target: "こども",
    ),
    Mask(
      name: 'エルモア 不織布マスク 子供用 30枚入', // 2021524
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
      name: ' プラスライフ 不織布マスク こどもサイズ 50枚入(個包装) ホワイト', //2021524
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
      name: '柔らか不織布マスク', //2021524
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
      name: 'どうぶつえんマスク 子供用 50枚', // 2021524
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
      name: '不織布子供マスク マイメロディ 30枚', //2021524
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
      name: '不織布子供マスク プラレール 30枚', //2021524
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
      name: '不織布子供マスク はらぺこあおむし 30枚', //2021524
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
      name: '【Magfine】3層不織布使い捨てマスク  1箱50枚入', //2021524
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
      name: '【Hellozebra】三層構造不織布 使い捨てマスク', // 2021524
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
      name: '【HOC】アッシュグレーマスク 子供用', // 2021524
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
      name: 'アイリスオーヤマ ディスポーザブルマスク 不織布', //2021619
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61Bq8Bu7U8L._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08NVPZJRC',
      size: "90mm × 145mm",
      maker: "アイリスオーヤマ",
      detail:
          "側面両端Vカット加工しているので、ほほとのすき間を低減し、長時間ぴったりフィットします。耳にやさしいやわらか丸耳ひも採用で耳が痛くなりにくいです。(耳ひも：丸ひも4ｍｍ）",
      target: "小さい",
    ),
    Mask(
      name: '【Presto!】 快適プレミアムマスク', //2021524
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
      name: '【TERUKA】 立体型不織布マスク', //　2021528
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61PPqKAgPPL._AC_SL1001_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08KXT3GYS',
      size: "90mm × 145mm",
      maker: "TERUKA",
      detail: "部立体感アップ。口紅が付きにくい。呼吸がより快適",
      target: "小さい",
    ),
    Mask(
      name: 'ナノエアーマスク 小さめサイズ 7枚入 PK-NI7S 145×90mm', //　2021619
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61AID2wJ3AL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/',
      size: "90mm × 145mm",
      maker: "アイリスオーヤマ",
      detail: "ふんわりとやわらかく幅の広い耳ひもを採用することで､長時間装着しても耳が痛くなりにくいです｡",
      target: "小さい",
    ),
    Mask(
      name: '【医食同源】 立体型不織布マスク', //
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61V3jCHsqsL._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRF6KG',
      size: "95mm × 145mm",
      maker: "医食同源",
      detail: "【ノーズフィット】マスクの密着性を高め、メガネのくもりを軽減",
      target: "小さい",
    ),
    Mask(
      name: 'プリーツガード 呼吸快適マスク', //　2021528
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
      name: '【Hellozebra】三層構造　不織布マスク', //2021528
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
      name: 'ナノAG+AIRマスク', //　2021528
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
      name: '【MERRY LIFE】不織布マスク', //2021528
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
      name: '快適ガードさわやかマスク',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/616ZDqygl6L._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B0141ZPADQ',
      size: "90mm × 165mm",
      maker: "快適ガードプロ",
      detail:
          "【特長】耳が痛くない ふんわり幅広耳ひも、口もと快適 つるさら素材、立体空間をつくるプリーツ加工、サイド密着加工とノーズフィッター",
      target: "ふつう",
    ),
    Mask(
      name: 'アイリスオーヤマ ディスポーザブル プリーツ型マスク ふつうサイズ 120枚入',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61T5iqnzHzL._AC_SL1000_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08ZSDJS1Z',
      size: "90mm × 165mm",
      maker: "アイリスオーヤマ",
      detail:
          "側面両端Vカット加工しているので、ほほとのすき間を低減し、長時間ぴったりフィットします。耳にやさしいやわらか丸耳ひも採用で耳が痛くなりにくいです。(耳ひも:丸ひも4mm)",
      target: "ふつう",
    ),
    Mask(
      name: 'NAGAHIROマスク',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61TD7PJ9GUS._AC_SL1012_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B093G94DQQ',
      size: "90mm × 175mm",
      maker: "NAGAHIRO",
      detail: "耳ゴムにはやわらかな平ゴム（約5ｍｍ）を採用。長時間使用しても耳が痛くなりにくい仕様です。",
      target: "ふつう",
    ),
    Mask(
      name: 'エリエール ハイパーブロックマスク',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81UdjYQp4AL._AC_UL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08W2JX5XY',
      size: "90mm × 175mm",
      maker: "大王製紙",
      detail:
          "外側から包み込むように装着し、やさしい力でしっかりマスクを引き上げるので、すきまを作りにくい構造となっています。マスクの中央部分が高くなるので、空間ができやすい。息苦しさを軽減できるほか、唇にもふれにくい構造となっています。刻印された「エリエール」マークが読める面を外側にして着用してください。",
      target: "ふつう",
    ),
    Mask(
      name: '【GOJAPAN】 不織布マスク',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/910YXdXgIkL._AC_SL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08MQGYVG4',
      size: "95mm × 173mm",
      maker: "GOJAPAN",
      detail:
          "【着け心地の良さと安全性を追求】柔らかいメルトプローン不織布を使用することで、フィット感が高まり、呼吸がしやすく、着け心地が良くなりました。また抗ウィルス効果が高い99%カットフィルターを使用しており、安全に快適に使用いただけます。",
      target: "ふつう",
    ),
    Mask(
      name: '【医食同源】 立体型不織布マスク',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71UHQKS9C6L._AC_SL1218_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08PDRF6KH',
      size: "95mm × 175mm",
      maker: "医食同源",
      detail: "マスクの密着性を高め、メガネのくもりを軽減",
      target: "ふつう",
    ),
    Mask(
      name: '【Coolth Style】不織布マスク',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/81uz1uSNIvL._AC_UL1500_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08WRXXB4P',
      size: "95mm × 175mm",
      maker: "Coolth Style",
      detail:
          "【耳が痛くなりにくい】鼻にはノーズフィット、頬はカーブ形状にすることで、顔にフィットしずれにくいです。耳紐は約4mm幅の平紐を使用しているため、長時間マスクを着用していても、痛くなりにくいです。 個包装の不織布の使い捨てタイプで衛生的にご使用いただけます。",
      target: "ふつう",
    ),
    Mask(
      name: '【SETSUGEN】不織布マスク', //2021619
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/619tHwNLvES._AC_SL1200_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08TVCLM6V',
      size: "95mm × 175mm",
      maker: "SETSUGEN",
      detail:
          "オメガ形状プリーツ 口元ゆったり立体加工。商品サイズ:約横175mm,縦95mm、普通サイズ、男女兼用、一般市民向け、業務者向け。ノーズフィルターと４段オメガプリーツ形状により、顔とのフィット感を向上し、エア漏れを軽減します。一般的な段々プリーツに比べてオメガ状のプリーツの方が、口元に空間を作りますので、息苦しさを軽減します。",
      target: "ふつう",
    ),
    Mask(
      name: '【3AIR】不織布マスク', //2021619
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/61OPkAaH-nL._AC_UL1004_.jpg',
      amazonUrl: 'https://www.amazon.co.jp/dp/B08V8D36YF',
      size: "95mm × 175mm",
      maker: "3AIR",
      detail:
          "【オメガプリーツ】口元の贅沢空間により口紅を気にせずに使用できます。ズレにくく、長時間の使用でも肌ストレスをあたえません。【ふわのびゴム】長時間使用しても耳が痛くなりません。【個別包装】便利な個別包装、持ち運びにも便利、より衛生でお使いいただけます。",
      target: "ふつう",
    ),
  ];

  List<Mask> maskListWithSize = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //maskListが走って、initStateで描画される。そして、その後ここで絞り込み処理を書いて、実際に描画するマスクを絞りこむ

    // ここで絞り込み処理を書く
    maskListWithSize =
        maskList.where((mask) => mask.maker == widget.maker).toList();

    setState(() {});
    print(maskListWithSize.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaskMe',
            style: TextStyle(fontFamily: 'Billabong', fontSize: 40.0)),
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
                      );
                    });
              },
              child: Container(
                padding: EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0),
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
              ),
            );
          }),
        ),
      ),
    );
  }
}
