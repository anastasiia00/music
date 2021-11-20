// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:musicplayer/pages/home.dart';
import 'package:musicplayer/pages/play_now.dart';
import 'package:musicplayer/widgets/music_card.dart';
import 'package:musicplayer/widgets/playing.dart';

class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff091227),
      bottomSheet: Playing(
        image: 'assets/songs_folder/grunge.png',
        songTitle: 'Chaff & Dust',
        authorName: 'HYONNA',
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff091227),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const PlayNow(),
                  ),
                );
              },
              child: Text('Button'),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                 Container(
                    width: 144.0,
                    height: 144.0,
                    child: MusicCard(
                      songFolder: 'assets/songs_folder/believer.png',
                      titleSong: 'Believer',
                      authorSong: 'Imagine Dragons',
                    ),
                  ),
                  Container(
                    width: 144.0,
                    height: 144.0,
                    child: MusicCard(
                      songFolder: 'assets/songs_folder/believer.png',
                      titleSong: 'Believer',
                      authorSong: 'Imagine Dragons',
                    ),
                  ),
                  Container(
                    width: 144.0,
                    height: 144.0,
                    child: MusicCard(
                      songFolder: 'assets/songs_folder/believer.png',
                      titleSong: 'Believer',
                      authorSong: 'Imagine Dragons',
                    ),
                  ),
                  Container(
                    width: 144.0,
                    height: 144.0,
                    child: MusicCard(
                      songFolder: 'assets/songs_folder/believer.png',
                      titleSong: 'Believer',
                      authorSong: 'Imagine Dragons',
                    ),
                  ),
                  Container(
                    width: 144.0,
                    height: 144.0,
                    child: MusicCard(
                      songFolder: 'assets/songs_folder/believer.png',
                      titleSong: 'Believer',
                      authorSong: 'Imagine Dragons',
                    ),
                  ),
                  Container(
                    width: 144.0,
                    height: 144.0,
                    child: MusicCard(
                      songFolder: 'assets/songs_folder/believer.png',
                      titleSong: 'Believer',
                      authorSong: 'Imagine Dragons',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
