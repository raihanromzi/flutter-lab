import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Widget'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              builtCard(Icons.account_balance, 'Account Balace'),
              builtCard(Icons.gif_box, 'Box')
            ],
          ),
        ),
      ),
    );
  }

  Card builtCard(IconData iconData, String text) {
    return Card(
      // Show dibawah card
      elevation: 20,
      child: Row(
        children: <Widget>[
          Container(margin: EdgeInsets.all(16), child: Icon(iconData)),
          Text(text)
        ],
      ),
    );
  }
}
