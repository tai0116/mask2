import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  Future<void> addUser() async {
    return users
        .add({
          'imageUrl':
              'https://images-na.ssl-images-amazon.com/images/I/81UdjYQp4AL._AC_UL1500_.jpg',
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}
