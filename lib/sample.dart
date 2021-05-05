import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }

  String name = '名無し';
  Future<void> getName() async {
    final snapshot = await FirebaseFirestore.instance.collection('users').get();
    setState(() {
      name = snapshot.docs.first.data()['name'];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getName();
  }
}
