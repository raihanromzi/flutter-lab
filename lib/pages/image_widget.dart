import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 300,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://api.duniagames.co.id/api/content/upload/file/2527915861632909807.jpg'),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeat,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
