import 'package:flutter/material.dart';
import 'package:musicplayer/pages/home.dart';

class Options extends StatelessWidget {
  const Options({ Key? key }) : super(key: key);

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
                    builder: (BuildContext context) => const Home(),
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