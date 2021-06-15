import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mask2_app/screens/bottom_navigation_screen.dart';

//class Mask {
//Mask({
//required this.imageUrl,
//required this.amazonUrl,
//required this.size,
//required this.maker,
//required this.target,
//required this.detail,
//});
//final String imageUrl;
//final String amazonUrl;
//final String size;
//final String maker;
//final String target;
//final String detail;

//factory Mask.fromMap(Map<String, dynamic> map) {
//return new Mask(
//imageUrl: map['imageUrl'] as String,
//amazonUrl: map['amazonUrl'] as String,
//size: map['size'] as String,
//maker: map['maker'] as String,
//target: map['target'] as String,
//detail: map['detail'] as String,
//);
//}

//Map<String, dynamic> toMap() {
//return {
//'imageUrl': this.imageUrl,
//'amazonUrl': this.amazonUrl,
//'size': this.size,
//'maker': this.maker,
//'target': this.target,
//'detail': this.detail,
//};
//}
//}

class DatabaseManager {
  final FirebaseFirestore addMask = FirebaseFirestore.instance;

  final CollectionReference masks =
      FirebaseFirestore.instance.collection('masks');

  Future<void> insertMask(Mask mask) async {
    await masks
        .add(mask.toMap())
        .then((value) => print("Mask Added"))
        .catchError((error) => print("Failed to add mask: $error"));
  }
}
