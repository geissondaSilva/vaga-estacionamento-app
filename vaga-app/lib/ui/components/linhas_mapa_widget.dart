import 'package:flutter/material.dart';

class LinhasMapaWidget extends StatefulWidget {
  @override
  _LinhasMapaWidgetState createState() => _LinhasMapaWidgetState();
}

class _LinhasMapaWidgetState extends State<LinhasMapaWidget> with TickerProviderStateMixin  {

  AnimationController animationController;
  Animation animation;

  @override
  void initState() {
    animationController = AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 2000,
      bottom: 0,
      left: 0,
      right: 0,
      child: ListView.builder(itemBuilder: null),
    );
  }
}