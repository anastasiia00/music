import 'package:flutter/material.dart';
import 'package:musicplayer/pages/home.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Home(),
        ),
      ),
    ),
  );
}
