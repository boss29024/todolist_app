// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardAllSchedule extends StatelessWidget {
  CardAllSchedule(
      {Key? key,
      this.headcard = '',
      this.score = 0,
      this.icon = Icons.access_alarm})
      : super(key: key);

  //final Function onChanged;
  //final Function onTap;
  final String headcard;
  final int score;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/listtoday');
        },
        child: Card(
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
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: (heightDevice / 100) * 2,
                          ),
                          Icon(icon),
                          SizedBox(
                            height: (heightDevice / 100) * 4,
                          ),
                          Text(headcard),
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: (heightDevice / 100) * 2,
                          ),
                          Text('$score', style: const TextStyle(fontSize: 30)),
                        ],
                      )),
                ]),
          ),
        ));
  }
}
