import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoView extends StatefulWidget {
  const PianoView({super.key});

  @override
  State<PianoView> createState() => _PianoViewState();
}

class _PianoViewState extends State<PianoView> {
  List c = [
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.purple,
  ];
  List audio = [
    "assets_note1.wav",
    "assets_note2.wav",
    "assets_note3.wav",
    "assets_note4.wav",
    "assets_note5.wav",
    "assets_note6.wav",
    "assets_note7.wav",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("XYLOPHONE"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: List.generate(
            c.length,
            (index) => Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    AudioPlayer player = AudioPlayer();
                    player.play(
                      AssetSource(
                        audio[index],
                        
                      ),
                    );
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: c[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
