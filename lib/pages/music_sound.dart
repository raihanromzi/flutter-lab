// ignore: import_of_legacy_library_into_null_safe
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';

class MusicAudioApp extends StatefulWidget {
  const MusicAudioApp({Key? key}) : super(key: key);

  @override
  State<MusicAudioApp> createState() => _MusicAudioAppState();
}

class _MusicAudioAppState extends State<MusicAudioApp> {
  String duration = "00:00:00";
  AudioPlayer audioPlayer = AudioPlayer();
  // Constructor
  _MusicAudioAppState() {
    audioPlayer.onAudioPositionChanged.listen((Duration d) {
      setState(() {
        duration = d.toString().split('.').first;
      });
    });
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.mute;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Music App')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  playSound(
                      'http://23.237.126.42/ost/top-gear-2-sega-genesis/yzcalloe/01_Title%20Theme.mp3');
                },
                child: Text('Play')),
            ElevatedButton(
                onPressed: () {
                  pauseSound;
                },
                child: Text('Pause')),
            ElevatedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text('Stop')),
            ElevatedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text('Mute')),
            Text(
              duration,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        )),
      ),
    );
  }
}
