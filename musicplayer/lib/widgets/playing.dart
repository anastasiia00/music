// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';

class Playing extends StatefulWidget {
  const Playing({
    Key? key,
    this.image,
    this.authorName,
    this.songTitle,
  }) : super(key: key);

  final String? image;
  final String? songTitle;
  final String? authorName;

  @override
  State<Playing> createState() => _PlayingState();
}

class _PlayingState extends State<Playing> {
  final _player = AudioPlayer();
  bool isPlay = true;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await _player.setAsset('assets/songs/HyunA.mp3');
  }

  void play() {
    _player.play();
  }

  void stop() {
    _player.pause();
  }

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64.0,
      color: Color(0xff091227),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Image.asset(widget.image!),
                Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.1, 13.0, 0.0, 4.4),
                        // ignore: prefer_const_constructors
                        child: Text(
                          widget.songTitle!,
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.4, 0.0, 0.0, 12.0),
                        child: Text(
                          widget.authorName!,
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 24.0, 26.0, 24.0),
                  child: Icon(
                    Icons.skip_previous_outlined,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 26.0, 24.0),
                  child: TextButton(
                    onPressed: () {
                      if (isPlay == true) {
                        setState(() {
                        isPlay = false;
                        play();                          
                        });
                      } else {
                        setState(() {
                        isPlay = true;
                        stop();                          
                        });
                      }
                    },
                    child: Icon(
                      Icons.pause,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 24.0, 27.0, 24.0),
                  child: Icon(
                    Icons.skip_next_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
