import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget'),
        ),
        body: Container(
          color: Colors.amber,
          // Jarak container keluar
          margin: const EdgeInsets.fromLTRB(32, 32, 32, 32),
          padding: const EdgeInsets.all(32),
          child: Container(
            color: Colors.white,
            child: Container(
                margin: const EdgeInsets.all(64),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.blue, Colors.green]))
                // Decoration
                ),
          ),
        ),
      ),
    );
  }
}
