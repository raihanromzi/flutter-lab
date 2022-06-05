import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Transform Widget'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    ));
  }
}
