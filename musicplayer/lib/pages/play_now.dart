// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:musicplayer/pages/options.dart';

class PlayNow extends StatelessWidget {
  const PlayNow({Key? key}) : super(key: key);

  @override
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
