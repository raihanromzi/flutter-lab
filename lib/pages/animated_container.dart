import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidget();
}

class _AnimatedContainerWidget extends State<AnimatedContainerWidget> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Animated Container'),
          ),
          body: Center(
            child: GestureDetector(
              onDoubleTap: () => {setState((() => {}))},
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
              ),
            ),
          )),
    );
  }
}
