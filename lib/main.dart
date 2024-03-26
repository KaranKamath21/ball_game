import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blueAccent,
          ),
          body: AskAny(),
        ),
      ),
    );

class AskAny extends StatefulWidget {
  const AskAny({Key? key}) : super(key: key);

  @override
  State<AskAny> createState() => _AskAnyState();
}

class _AskAnyState extends State<AskAny> {
  int dicenum = Random().nextInt(5) + 1;

  void changeNum() {
    setState(() {
      dicenum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                child: Image.asset('images/ball$dicenum.png'),
                onPressed: () {
                  changeNum();
                }),
          ),
        ],
      ),
    );
  }
}
