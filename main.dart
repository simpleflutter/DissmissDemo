import 'package:flutter/material.dart';
import 'package:test_app/dissmiss_demo.dart';
import 'package:test_app/home_page.dart';
import 'package:test_app/music_player.dart';
import 'font_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DissmissDemo(),
    );
  }
}
