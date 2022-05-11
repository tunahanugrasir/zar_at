import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicPlayerPage(),
    );
  }
}

class MusicPlayerPage extends StatefulWidget {
  const MusicPlayerPage({Key? key}) : super(key: key);

  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("assets_note$soundNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            playSoundButton(1, Colors.orange),
            playSoundButton(2, Colors.red),
            playSoundButton(3, Colors.pink),
            playSoundButton(4, Colors.purple),
            playSoundButton(5, Colors.yellow),
            playSoundButton(6, Colors.green),
            playSoundButton(7, Colors.indigoAccent),
          ],
        ),
      ),
    );
  }

  Expanded playSoundButton(int soundNumber, Color buttonColor) {
    return Expanded(
      child: MaterialButton(
        color: buttonColor,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }
}
