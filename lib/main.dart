import 'package:flutter/material.dart';
// import 'pages/text_widget.dart';
// import 'pages/row_column_widget.dart';
import 'pages/container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerWidget(),
    );
  }
}
