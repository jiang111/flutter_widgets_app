import 'package:flutter/material.dart';
import 'home_page.dart';
import 'utils/fcolors.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main() {
  runApp(FlutterApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

var theme = ThemeData(
    primaryColor: blue,
    accentColor: Colors.red,
    brightness: Brightness.light,
    textTheme: TextTheme(
      title: TextStyle(
        color: color_333333,
        fontSize: 16.0,
      ),
    ));

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
//      showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
