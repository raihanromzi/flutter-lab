import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  const AnonymousMethod({Key? key}) : super(key: key);

  @override
  State<AnonymousMethod> createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String message = 'ini adalah Text';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Anonymous Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            ElevatedButton(
                onPressed: () => setState(() {
                      message = 'Tombol sudah ditekan';
                    }),
                child: const Text('Tekan Saya!'))
          ],
        ),
      ),
    ));
  }
}
