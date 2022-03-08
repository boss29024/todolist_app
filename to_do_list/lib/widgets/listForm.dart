import 'package:flutter/material.dart';

class ListForm extends StatelessWidget {
  const ListForm({Key? key}) : super(key: key);

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
                      SizedBox(
                        height: (heightDevice / 100) * 4,
                      ),
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
                    ],
                  )),
            ]),
      ),
    ));
  }
}
