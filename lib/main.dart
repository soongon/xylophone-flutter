import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: XylophoneScreen(),
  ));
}

class XylophoneScreen extends StatelessWidget {
  void _playSound(int noteId) {
    AudioCache player = AudioCache();
    player.play('note$noteId.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  _playSound(1);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  _playSound(2);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal)),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
