import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class Detailsbottom extends StatelessWidget {
  const Detailsbottom(
      {Key? key, this.headname = '', this.icon = Icons.access_alarm})
      : super(key: key);

  final String headname;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: (heightDevice / 100) * 10,
              width: widthDevice,
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Icon(icon), Text(headname)],
                    )),
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SwitcherButton(
                          value: true,
                          onChange: (value) {},
                        )
                      ],
                    )),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
