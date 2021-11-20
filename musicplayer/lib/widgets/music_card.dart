// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    Key? key,
    this.songFolder,
    this.titleSong,
    this.authorSong,
    // this.height,
    // this.width,
    // this.heightCont,
    // this.widthCont,
  }) : super(key: key);

  final String? songFolder;
  final String? titleSong;
  final String? authorSong;
  // final double? width;
  // final double? height;
  // final double? widthCont;
  // final double? heightCont;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(7.7, 8.79, 2.37, 16.0),
              child: Image.asset(
                songFolder!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.39),
            child: Text(
              titleSong!,
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            authorSong!,
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 10.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
