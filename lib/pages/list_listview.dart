import 'package:flutter/material.dart';

class ListListView extends StatefulWidget {
  const ListListView({Key? key}) : super(key: key);

  @override
  State<ListListView> createState() => _ListListViewState();
}

class _ListListViewState extends State<ListListView> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List ListView'),
        ),
        body: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                    onPressed: (() => setState(() {
                          widgets.add(Text(
                            'Data ke ${counter++}',
                            style: TextStyle(
                                fontSize: 40,
                                fontFamily: 'RobotoMono',
                                color: Colors.amber),
                          ));
                        })),
                    child: Text('Tambah Data')),
                ElevatedButton(
                    onPressed: (() => setState(() {
                          widgets.removeLast();
                          counter--;
                        })),
                    child: Text('Hapus Data'))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widgets,
            ),
          )
        ]),
      ),
    );
  }
}
