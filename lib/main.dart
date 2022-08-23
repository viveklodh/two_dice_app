import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index1 = 1;
  int index2 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("two dice app")),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.lightBlueAccent,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index2 = Random().nextInt(5) + 1;
                          index1 = Random().nextInt(5) + 1;
                        });
                      },
                      child: Image.asset(
                        "dice/dice$index1.png",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index1 = Random().nextInt(5) + 1;
                          index2 = Random().nextInt(5) + 1;
                        });
                      },
                      child: Image.asset(
                        "dice/dice$index2.png",
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
