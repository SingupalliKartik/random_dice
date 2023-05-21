import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override // This widget is the root of your application.

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: random(),
      ),
    );
  }
}

class random extends StatefulWidget {
  const random({Key? key}) : super(key: key);

  @override
  State<random> createState() => _randomState();
}

class _randomState extends State<random> {
  int number = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset('img/d$number.png'),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                setState(() {
                  number= Random().nextInt(6)+1;
                });

              },
              child: Text(
                "Roll the dice",
                style: TextStyle(
                  fontSize: 20.2,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
