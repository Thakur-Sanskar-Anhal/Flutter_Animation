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
  double _width = 200;
  double _height = 200;
  Color _color = Color.fromARGB(213, 14, 173, 247);

  void updateState() {
    setState(() {
      _width = 400;
      _height = 400;
      _color = Color.fromARGB(224, 53, 18, 255);
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
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInBack,
                  width: _width,
                  height: _height,
                  color: _color,
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
