import 'package:cloud_firestore/cloud_firestore.dart';

class Msk {
  Msk({
    required this.imageUrl,
    required this.amazonUrl,
    required this.size,
    required this.maker,
    required this.target,
    required this.detail,
  });
  final String imageUrl;
  final String amazonUrl;
  final String size;
  final String maker;
  final String target;
  final String detail;

  factory Msk.fromMap(Map<String, dynamic> map) {
    return new Msk(
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
}

class DatabaseManager {
  final FirebaseFirestore addMask = FirebaseFirestore.instance;

  final CollectionReference masks =
      FirebaseFirestore.instance.collection('masks');

  Future<void> insertMask(Msk msk) async {
    await masks
        .add(msk.toMap())
        .then((value) => print("Mask Added"))
        .catchError((error) => print("Failed to add mask: $error"));
  }
}
