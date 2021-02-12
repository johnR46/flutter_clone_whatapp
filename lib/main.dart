import 'package:flutter/material.dart';
import 'package:what_app/screen/what.app.home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'whatAPP',
        theme: new ThemeData(
            primaryColor: Colors.redAccent, accentColor: new Color(0xff250366)),
        debugShowCheckedModeBanner: false,
        home: new WhatsAppHome());
  }
}
