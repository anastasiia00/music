import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({Key? key, this.songFolder, this.titleSong, this.authorSong})
      : super(key: key);

  final String? songFolder;
  final String? titleSong;
  final String? authorSong;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 280.0,
      child: Container(
        width: 190.0,
        height: 190.0,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(7.7, 8.79, 2.37, 16.0),
              child: Image.asset(
                songFolder!,
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
      ),
    );
  }
}
