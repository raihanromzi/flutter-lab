import 'package:flutter/material.dart';
import 'package:flutter_lab/pages/multipages/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('To Second Page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SecondPage();
                },
              ));
            }),
      ),
    ));
  }
}
