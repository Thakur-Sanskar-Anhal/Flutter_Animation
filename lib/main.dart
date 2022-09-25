import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double width = 200;
  double height = 200;

  void updateState() {
    setState(() {
      width = 400;
      height = 400;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      home: Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  width: width,
                  height: height,
                  color: const Color.fromARGB(200, 23, 255, 255),
                  child: Center(
                    child: Text(
                      'Animation',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    updateState();
                  },
                  child: const Text('Animate'),
                )
              ]),
        ),
      ),
    );
  }
}
