// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardAllSchedule extends StatelessWidget {
  const CardAllSchedule({
    Key? key,
    //this.onChanged,
    //this.onTap,
    //this.readOnly = false,
    this.width = 1,
    this.height = 1,
    //this.decoration,
    // this.name,
    // this.comment,
    this.score = 0,
  }) : super(key: key);

  //final Function onChanged;
  //final Function onTap;
  //final bool readOnly;
  final double width;
  final double height;
  //final InputDecoration decoration;
  // final String name;
  // final String comment;
  final double score;

  @override
  Widget build(BuildContext context) {
    final widthDevice = MediaQuery.of(context).size.width;
    final heightDevice = MediaQuery.of(context).size.height;
        return InkWell(
            //onTap: this.onTap,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: (heightDevice / 100) * 18,
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
                                height: (heightDevice / 100) * 1,
                              ),
                              SizedBox(
                                height: (heightDevice / 100) * 3,
                              ),
                              SizedBox(
                                height: (heightDevice / 100) * 3,
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: (heightDevice / 100) * 1,
                              ),
                            ],
                          ))
                    ]),
              ),
            ));
      }}
