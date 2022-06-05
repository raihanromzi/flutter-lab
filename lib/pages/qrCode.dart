import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeApp extends StatelessWidget {
  const QrCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('QR Code')),
        body: Center(
            child: QrImage(
          version: 6,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(20),
          size: 200,
          data: "google.com",
        )),
      ),
    );
  }
}
