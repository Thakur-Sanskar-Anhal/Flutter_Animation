import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:vector_math/vector_math.dart' show radians;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox.expand(child: RadialMenu()),
      ),
    );
  }
}

class RadialMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(microseconds: 900), vsync: this);
  }

  @override
  Widget build(BuildContext context){
    return RadialMenu(controller: controller)
  }
}
