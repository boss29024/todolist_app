import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class Detailbottom extends StatelessWidget {
  const Detailbottom(
      {Key? key, this.headname = '', this.icon = Icons.access_alarm})
      : super(key: key);

  final String headname;
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
        height: (heightDevice / 100) * 10,
        width: widthDevice,
        padding: const EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon),
                  SizedBox(
                    width: (widthDevice / 100) * 1,
                  ),
                  Text(headname)
                ],
              )),
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SwitcherButton(
                    value: false,
                    onChange: (value) {},
                    onColor: Colors.blue,
                    offColor: Colors.grey,
                  )
                ],
              )),
            ]),
      ),
    );
  }
}
