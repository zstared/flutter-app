import 'package:flutter/material.dart';
import 'package:xinhong_app/pages/app.dart';
import 'package:xinhong_app/style/style.dart';

void main() {
  runApp(XHApp());
}

class XHApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XinHong App',
      theme: new ThemeData(
        primarySwatch: ThemeColors.primarySwatch,
        backgroundColor: Color(ThemeColors.primaryDarkValue)
      ),
      home: AppPage(),
    );
  }
}
