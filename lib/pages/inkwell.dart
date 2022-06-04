import 'package:flutter/material.dart';

class InkWellApp extends StatelessWidget {
  const InkWellApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ink Well App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Elevated Button',
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.amber.shade100, Colors.amber.shade900],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
              child: Material(
                child: InkWell(
                  child: Text('My Button'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
