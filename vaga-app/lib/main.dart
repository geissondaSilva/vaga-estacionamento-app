import 'package:flutter/material.dart';
import 'package:new_bus_app/ui/pages/login_page.dart';

void main() => runApp(BusApp());

class BusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepPurple
      ),
      home: LoginPage(),
    );
  }
}