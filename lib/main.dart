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

  Expanded _makeKey({int noteId = 1, Color color = Colors.white}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          _playSound(noteId);
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _makeKey(
              noteId: 1,
              color: Colors.red,
            ),
            _makeKey(noteId: 2, color: Colors.orange),
            _makeKey(noteId: 3, color: Colors.yellow),
            _makeKey(noteId: 4, color: Colors.green),
            _makeKey(noteId: 5, color: Colors.teal),
            _makeKey(noteId: 6, color: Colors.blue),
            _makeKey(noteId: 7, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
