import 'package:flutter/material.dart';

class MediaQueryApp extends StatelessWidget {
  const MediaQueryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Media Query'),
          ),
          body: (MediaQuery.of(context).orientation == Orientation.portrait)
              ? Column(
                  children: generateContainers,
                )
              : Row(children: generateContainers)),
    );
  }

  List<Widget> get generateContainers {
    return [
      Container(
        color: Colors.red,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      )
    ];
  }
}
