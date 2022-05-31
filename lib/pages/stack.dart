import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  int counter = 1;
  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Stack Widget'),
      ),
      body: Stack(
        children: <Widget>[
          // Background
          // ListView
          // Button
          Column(
            children: <Widget>[
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              Flexible(
                  child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.grey,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      )),
                ],
              ))
            ],
          ),
          ListView(children: [
            Container(
              margin: EdgeInsets.only(top: 32),
              padding: EdgeInsets.only(bottom: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widgets,
              ),
            ),
          ]),
          Container(
            margin: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      child: ElevatedButton(
                          onPressed: (() => setState(() {
                                widgets.add(Text(
                                  'Data ke ${counter++}',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontFamily: 'RobotoMono',
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.amber),
                                ));
                              })),
                          child: Text(
                            'Tambah Data',
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: ElevatedButton(
                          onPressed: (() => setState(() {
                                widgets.removeLast();
                                counter--;
                              })),
                          child: Text(
                            'Hapus Data',
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment(0.6, 0.7),
              child: ElevatedButton(
                onPressed: (() => setState(() {
                      widgets.length;
                    })),
                child: Text('Button Bebas Terbang'),
                style: ElevatedButton.styleFrom(primary: Colors.pink),
              ))
        ],
      ),
    ));
  }
}
