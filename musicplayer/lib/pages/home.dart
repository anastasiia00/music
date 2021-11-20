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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff091227),
              ),
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff091227),
      bottomSheet: Playing(
        image: 'assets/songs_folder/grunge.png',
        songTitle: 'Chaff & Dust',
        authorName: 'HYONNA',
      ),
      appBar: AppBar(
        // Image.asset('assets/icons/menu.svg'),
        backgroundColor: Color(0xff091227),
      ),
      body: Container(
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
                  child: Container(
                    height: 280,
                    child: Row(
                      children: [
                        Container(
                          child: MusicCard(
                            // widthCont: 190.0,
                            // heightCont: 250.0,
                            songFolder:
                                'assets/songs_folder/monstersGoBump.png',
                            titleSong: 'Monsters Go Bump',
                            authorSong: 'ERIKA RECINOS',
                          ),
                        ),
                        MusicCard(
                          // widthCont: 190.0,
                          // heightCont: 250.0,
                          songFolder: 'assets/songs_folder/momentApart.png',
                          titleSong: 'Moment Apart',
                          authorSong: 'ODESZA',
                        ),
                        MusicCard(
                          // widthCont: 190.0,
                          // heightCont: 250.0,
                          songFolder: 'assets/songs_folder/believer.png',
                          titleSong: 'Believer',
                          authorSong: 'Imagine Dragons',
                        ),
                        MusicCard(
                          // widthCont: 190.0,
                          // heightCont: 250.0,
                          songFolder: 'assets/songs_folder/Shortwave.png',
                          titleSong: 'Shortwave',
                          authorSong: 'RYAN GRIGDRY',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
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
                  child: Container(
                    height: 280,
                    child: Row(
                      children: [
                        MusicCard(
                          // widthCont: 190.0,
                          // heightCont: 280.0,
                          songFolder: 'assets/songs_folder/monstersGoBump.png',
                          titleSong: 'Monsters Go Bump',
                          authorSong: 'ERIKA RECINOS',
                        ),
                        MusicCard(
                          // widthCont: 190.0,
                          // heightCont: 242.0,
                          songFolder: 'assets/songs_folder/momentApart.png',
                          titleSong: 'Moment Apart',
                          authorSong: 'ODESZA',
                        ),
                        MusicCard(
                          // widthCont: 190.0,
                          // heightCont: 242.0,
                          songFolder: 'assets/songs_folder/believer.png',
                          titleSong: 'Believer',
                          authorSong: 'Imagine Dragons',
                        ),
                        MusicCard(
                          // widthCont: 190.0,
                          // heightCont: 242.0,
                          songFolder: 'assets/songs_folder/Shortwave.png',
                          titleSong: 'Shortwave',
                          authorSong: 'RYAN GRIGDRY',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
