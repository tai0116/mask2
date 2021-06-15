import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mask2_app/screens/bottom_navigation_screen.dart';

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
