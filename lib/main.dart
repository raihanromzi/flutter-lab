import 'package:flutter/material.dart';
import 'package:flutter_lab/pages/hero_cliprrect_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HeroCliprrectWidget(),
    );
  }
}
