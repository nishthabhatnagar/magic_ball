import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('ASK ME ANYTHING'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  var MagicBallImage = 1;

  void changeBallImage() {
    setState(() {
      MagicBallImage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBallImage();
              },
              child: Image.asset('assets/images/ball$MagicBallImage.png'),
            ),
          ),
        ],
      ),
    );
  }
}
