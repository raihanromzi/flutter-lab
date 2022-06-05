import 'package:flutter/material.dart';

class HeroCliprrectWidget extends StatelessWidget {
  const HeroCliprrectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        leading: Icon(Icons.android),
        title: Text('Hero ClipRRect Widget'),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.amber.shade600, Colors.amber.shade700],
                  end: FractionalOffset.bottomRight,
                  begin: FractionalOffset.topLeft)),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'imageHero',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
                width: 100,
                height: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://asset.kompas.com/crops/2UjakURjSResZEoyWB9IyeFkGlU=/0x0:719x479/750x500/data/photo/2019/10/28/5db6b82dcae3c.png'),
                )),
          ),
        ),
      ),
    ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.amber.shade400, Colors.amber.shade900],
                      end: FractionalOffset.bottomRight,
                      begin: FractionalOffset.topLeft))),
        ),
        body: Center(
          child: Hero(
            tag: 'imageHero',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 200,
                height: 200,
                child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://asset.kompas.com/crops/2UjakURjSResZEoyWB9IyeFkGlU=/0x0:719x479/750x500/data/photo/2019/10/28/5db6b82dcae3c.png')),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
