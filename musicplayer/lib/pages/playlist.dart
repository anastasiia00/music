import 'package:flutter/material.dart';
import 'package:musicplayer/pages/home.dart';
import 'package:musicplayer/pages/play_now.dart';

class Playlist extends StatelessWidget {
  const Playlist({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
          ],
        ),
      ),
    );
  }
}