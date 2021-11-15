// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicplayer/pages/options.dart';

class PlayNow extends StatefulWidget {
  const PlayNow({Key? key}) : super(key: key);

  @override
  State<PlayNow> createState() => _PlayNowState();
}

class _PlayNowState extends State<PlayNow> {
  AudioPlayer _player = AudioPlayer();

  @override
  void initState() {
      _init();
    super.initState();
  }

  Future<void> _init() async {
    var duration = await _player.setAsset('assets/songs/HyunA.mp3');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff091227),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Options(),
                  ),
                );
              },
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
