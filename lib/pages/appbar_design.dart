import 'package:flutter/material.dart';

class AppbarDesign extends StatelessWidget {
  const AppbarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: Text(
            'AppBar Design',
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    colors: <Color>[
                  Colors.amber.shade500,
                  Colors.amber.shade700
                ])),
          ),
          // bottom: TabBar(
          //   tabs: [
          //     Tab(
          //       icon: Icon(Icons.home),
          //     ),
          //     Tab(
          //       icon: Icon(Icons.search),
          //     ),
          //     Tab(
          //       icon: Icon(Icons.settings),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
