import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb),
          title: Text('Custom Card'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
            colors: [Color(0xFF8C062F), Color.fromARGB(255, 138, 12, 50)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ))),
        ),
        body: Container(
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFFE5788), Color(0xFFF56D5D)])),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      Opacity(
                          opacity: 1,
                          child: Container(
                              decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          )))
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
