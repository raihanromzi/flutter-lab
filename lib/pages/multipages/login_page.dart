import 'package:flutter/material.dart';
import 'package:flutter_lab/pages/multipages/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              // Push Replacement -> Tidak bisa back
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return MainPage();
                },
              ));
            },
          ),
        ),
      ),
    );
  }
}
