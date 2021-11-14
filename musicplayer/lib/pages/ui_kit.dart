import 'package:flutter/material.dart';
import 'package:musicplayer/widgets/music_card.dart';

class UiPage extends StatelessWidget {
   const UiPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       MusicCard(),
      ],
    );
  }
}