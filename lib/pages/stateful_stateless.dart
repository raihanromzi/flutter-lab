import 'package:flutter/material.dart';

// Stateful bisa berubah2 tampilannya, jika ada yg dipencet maka akan berubah
class StatelessStatefulWidget extends StatefulWidget {
  const StatelessStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatelessStatefulWidget> createState() =>
      _StatelessStatefulWidgetState();
}

class _StatelessStatefulWidgetState extends State<StatelessStatefulWidget> {
  int number = 32;
  void addNumber() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless vs Stateful Widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(
                  color: Color.fromRGBO(
                      0 + number + 50, 0 + number + 50, 0 + number + 50, 1),
                  fontSize: 32 + number.toDouble(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Event Handler
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: addNumber,
                  child: const Text('Tambah Bilangan'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
