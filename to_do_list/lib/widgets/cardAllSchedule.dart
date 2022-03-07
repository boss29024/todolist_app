// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardAllSchedule extends StatelessWidget {
   CardAllSchedule({
    Key? key,
    //this.onChanged,
    //this.onTap,
    this.score = 0,
  }) : super(key: key);

  //final Function onChanged;
  //final Function onTap;
  final int score;

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;

    return InkWell(
        //onTap: this.onTap,
        child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: (heightDevice / 100) * 15,
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
                      const Icon(Icons.today, size: 30),
                      SizedBox(
                        height: (heightDevice / 100) * 2,
                      ),
                      const Text('data', style: TextStyle(fontSize: 20)),
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