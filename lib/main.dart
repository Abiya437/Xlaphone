import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
    void sound(int soundN){
      final player=AudioPlayer();
      player.play(AssetSource('note$soundN.wav'));
    }
    Expanded buildKey({Color? Color, soundN}){
     return Expanded(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Color),
            onPressed: (){
              sound(soundN);
              },
            child: null,
        ),
      );
    }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              buildKey(Color:Colors.deepOrangeAccent,soundN:1),
              buildKey(Color:Colors.pinkAccent,soundN:2),
              buildKey(Color:Colors.indigo,soundN:3),
              buildKey(Color:Colors.red,soundN:4),
              buildKey(Color:Colors.blue,soundN:5),
              buildKey(Color:Colors.pink,soundN:6),
              buildKey(Color:Colors.purple,soundN:7),
              ],
          ),

        ),
      ),
    );
  }
}
