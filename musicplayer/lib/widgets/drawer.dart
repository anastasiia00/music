// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Drawer extends StatelessWidget {
  const Drawer({
    Key? key,
    this.icon,
    this.nameItem,
  }) : super(key: key);

  final String? icon;
  final String? nameItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(
            icon!,
            width: 20.0,
            height: 20.0,
          ),
          SizedBox(
            width: 30.0,
          ),
          Text(
            nameItem!,
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
