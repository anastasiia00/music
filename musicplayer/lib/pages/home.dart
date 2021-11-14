// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicplayer/pages/playlist.dart';
import 'package:musicplayer/widgets/music_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff091227),
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
                Container(
                  width: double.infinity,
                  height: 64.0,
                  color: Color(0xff091227),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/songs_folder/origins.png'),
                      Column(
                        children: [
                          Text(
                            'Chaff & Dust',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'HYONNA',
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/icons/previousSong.svg'),
                      SvgPicture.asset('assets/icons/pause.svg'),
                      SvgPicture.asset('assets/icons/nextSong.svg'),
                    ],
                  ),
                ),
                //   Text(
                //     'Recommended for you',
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontFamily: 'Gilroy',
                //       fontSize: 24.0,
                //     ),
                //   ),
                //   Container(
                //     width: double.infinity,
                //     child: SingleChildScrollView(
                //       scrollDirection: Axis.horizontal,
                //       child: Row(
                //         children: [
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/monstersGoBump.png',
                //             titleSong: 'Monsters Go Bump',
                //             authorSong: 'ERIKA RECINOS',
                //           ),
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/momentApart.png',
                //             titleSong: 'Moment Apart',
                //             authorSong: 'ODESZA',
                //           ),
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/believer.png',
                //             titleSong: '',
                //             authorSong: 'ERIKA RECINOS',
                //           ),
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/monstersGoBump.png',
                //             titleSong: 'Monsters Go Bump',
                //             authorSong: 'ERIKA RECINOS',
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                //   // SizedBox(
                //   //   height: 20.0,
                //   // ),
                //   Text(
                //     'My Playlist',
                //     textAlign: TextAlign.left,
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontFamily: 'Gilroy',
                //       fontSize: 24.0,
                //     ),
                //   ),
                //   Container(
                //     width: double.infinity,
                //     child: SingleChildScrollView(
                //       scrollDirection: Axis.horizontal,
                //       child: Row(
                //         children: [
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/monstersGoBump.png',
                //             titleSong: 'Monsters Go Bump',
                //             authorSong: 'ERIKA RECINOS',
                //           ),
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/monstersGoBump.png',
                //             titleSong: 'Monsters Go Bump',
                //             authorSong: 'ERIKA RECINOS',
                //           ),
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/monstersGoBump.png',
                //             titleSong: 'Monsters Go Bump',
                //             authorSong: 'ERIKA RECINOS',
                //           ),
                //           MusicCard(
                //             songFolder: 'assets/songs_folder/monstersGoBump.png',
                //             titleSong: 'Monsters Go Bump',
                //             authorSong: 'ERIKA RECINOS',
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
