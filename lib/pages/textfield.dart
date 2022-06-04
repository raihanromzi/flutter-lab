import 'package:flutter/material.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({Key? key}) : super(key: key);

  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.pie_chart_rounded, color: Colors.white),
        title: Text(
          'TextField App',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.android)),
          IconButton(onPressed: () {}, icon: Icon(Icons.apple))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(32),
            child: TextField(
              obscureText: true,
              maxLength: 5,
              onChanged: (value) => setState(() {}),
              controller: controller,
              decoration: InputDecoration(
                  icon: Icon(Icons.abc),
                  // Suffix -> Ada di dalam kotak paling kanan
                  suffixIcon: Icon(Icons.abc_rounded),
                  // prefix -> Ada di dalam kotak paling kiri
                  prefixIcon: Icon(Icons.ac_unit_outlined),
                  prefixText: 'Nama',
                  prefixStyle:
                      TextStyle(color: Colors.black, fontFamily: 'RobotoMono'),
                  labelText: 'Nama Lengkap',
                  labelStyle: TextStyle(color: Colors.amber),
                  hintText: ' Ini hint bodoh!',
                  hintStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Text(controller.text)
        ],
      ),
    ));
  }
}
