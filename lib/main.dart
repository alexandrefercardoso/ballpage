import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: const Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  const Ballpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
          backgroundColor: Colors.blue.shade900, title: const Text('App bar')),
      body: Bolla(),
    );
  }
}

class Bolla extends StatefulWidget {
  const Bolla({Key? key}) : super(key: key);

  @override
  State<Bolla> createState() => _BollaState();
}

class _BollaState extends State<Bolla> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
              });
              ballnumber = Random().nextInt(5)+1;
            },
            child: Image.asset('images/ball$ballnumber.png')));
  }
}
