import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sebuah widget yang berisi konten aplikasi yang menggunakan material design
    // Class
    return MaterialApp(
      // Properti
      // Scaffold -> Tampilan dasar android
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Widget'),
        ),
        body: Center(
            child: Container(
                color: Colors.amber,
                width: 150,
                height: 100,
                child: const Text(
                  'lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ))),
      ),
    );
  }
}
