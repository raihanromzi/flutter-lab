import 'package:flutter/material.dart';

class SpaceWidget extends StatelessWidget {
  const SpaceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spacer Widget'),
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
              Spacer(flex: 1),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
