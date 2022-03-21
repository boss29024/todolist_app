import 'package:flutter/material.dart';

class AllTextCard extends StatelessWidget {
  const AllTextCard(
      {Key? key, this.icon = Icons.access_time, this.stringText = ''})
      : super(key: key);

  final IconData icon;
  final String stringText;

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
          width: (widthDevice / 100) * 85,
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
                  Text(stringText),
                ]),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          )),
    );
  }
}
