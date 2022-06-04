import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.height * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: <Widget>[
          Positioned(
            child: Container(
              width: getSmallDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.amber.shade100, Colors.amber.shade900],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          )
        ]),
      ),
    );
  }
}
