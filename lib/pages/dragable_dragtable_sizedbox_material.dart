import 'package:flutter/material.dart';

class DragableApp extends StatefulWidget {
  const DragableApp({Key? key}) : super(key: key);

  @override
  State<DragableApp> createState() => _DragableAppState();
}

class _DragableAppState extends State<DragableApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color? targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dragable App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // Membawa tipe data ketika di drag
                Draggable<Color>(
                  data: color1,
                  // Membuat lingkaran
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      // Efek shadow
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: StadiumBorder(),
                      // Efek shadow
                      elevation: 0,
                    ),
                  ),
                  // Bentuk ketika di drag
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.75),
                      shape: StadiumBorder(),
                      // Efek shadow
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  // Membuat lingkaran
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      // Efek shadow
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color2.withOpacity(0.5),
                      shape: StadiumBorder(),
                      // Efek shadow
                      elevation: 0,
                    ),
                  ),
                  // Bentuk ketika di drag
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: color1.withOpacity(0.75),
                      shape: StadiumBorder(),
                      // Efek shadow
                      elevation: 3,
                    ),
                  ),
                )
              ],
            ),
            // Tempat ketika kita nge drag
            DragTarget<Color>(
              onWillAccept: (color) => true,
              onAccept: (color) {
                isAccepted = true;
                targetColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                if (isAccepted) {
                  return SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: targetColor,
                        shape: StadiumBorder(),
                        // Efek shadow
                      ));
                } else {
                  return SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        color: Colors.grey,
                        shape: StadiumBorder(),
                        // Efek shadow
                      ));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
