import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Style'),
        ),
        body: const Center(
          child: Text(
            'Roboto Mono',
            style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.dashed,
                decorationThickness: 4),
          ),
        ),
      ),
    );
  }
}
