import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromRadius(80),
            child: AppBar(
              backgroundColor: Colors.amber,
              flexibleSpace: Positioned(
                bottom: 0,
                right: 0,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 80, left: 30),
                    child: Text(
                      'Appbar Custom Height',
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Roboto Mono',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
