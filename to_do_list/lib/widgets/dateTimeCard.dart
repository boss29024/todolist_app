import 'package:flutter/material.dart';

class DateTimeCard extends StatelessWidget {
  const DateTimeCard(
      {Key? key, this.icon = Icons.access_time, this.nameDateTime = ''})
      : super(key: key);

  final IconData icon;
  final String nameDateTime;

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
          padding: EdgeInsets.all(5),
          height: (heightDevice / 100) * 10,
          width: (widthDevice/100)*90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(children: [
                  Icon(
                    icon,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: (widthDevice / 100) * 1,
                  ),
                  Text(nameDateTime),
                ]),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          )),
    );
  }
}
