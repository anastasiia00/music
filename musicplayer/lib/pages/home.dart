// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicplayer/pages/playlist.dart';
import 'package:musicplayer/widgets/music_card.dart';
import 'package:musicplayer/widgets/playing.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff091227),
      bottomNavigationBar: Playing(
        image: 'assets/songs_folder/grunge.png',
        songTitle: 'Chaff & Dust',
        authorName: 'HYONNA',
      ),
      appBar: AppBar(
        // Image.asset('assets/icons/menu.svg'),
        backgroundColor: Color(0xff091227),
      ),
      body: Center(
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Playlist(),
                      ),
                    );
                  },
                  child: Text('Button'),
                ),
                Text(
                  'Recommended for you',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gilroy',
                    fontSize: 24.0,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MusicCard(
                          songFolder: 'assets/songs_folder/monstersGoBump.png',
                          titleSong: 'Monsters Go Bump',
                          authorSong: 'ERIKA RECINOS',
                        ),
                        MusicCard(
                          songFolder: 'assets/songs_folder/momentApart.png',
                          titleSong: 'Moment Apart',
                          authorSong: 'ODESZA',
                        ),
                        MusicCard(
                          songFolder: 'assets/songs_folder/believer.png',
                          titleSong: 'Believer',
                          authorSong: 'Imagine Dragons',
                        ),
                        MusicCard(
                          songFolder: 'assets/songs_folder/Shortwave.png',
                          titleSong: 'Shortwave',
                          authorSong: 'RYAN GRIGDRY',
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 20.0,
                // ),
                Text(
                  'My Playlist',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gilroy',
                    fontSize: 24.0,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MusicCard(
                          songFolder: 'assets/songs_folder/monstersGoBump.png',
                          titleSong: 'Monsters Go Bump',
                          authorSong: 'ERIKA RECINOS',
                        ),
                        MusicCard(
                          songFolder: 'assets/songs_folder/monstersGoBump.png',
                          titleSong: 'Monsters Go Bump',
                          authorSong: 'ERIKA RECINOS',
                        ),
                        MusicCard(
                          songFolder: 'assets/songs_folder/monstersGoBump.png',
                          titleSong: 'Monsters Go Bump',
                          authorSong: 'ERIKA RECINOS',
                        ),
                        MusicCard(
                          songFolder: 'assets/songs_folder/monstersGoBump.png',
                          titleSong: 'Monsters Go Bump',
                          authorSong: 'ERIKA RECINOS',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
