// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';

class CardAllSchedule extends StatelessWidget {
  CardAllSchedule({Key? key, this.headcard = '', this.icon = Icons.error})
      : super(key: key);

  final String headcard;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: (heightDevice / 100) * 18,
        width: (widthDevice / 100) * 45,
        padding: const EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.blue, size: 26),
              Text(
                headcard,
                style: TextStyle(fontSize: 22),
              ),
            ]),
      ),
    );
  }
}
