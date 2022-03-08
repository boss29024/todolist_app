import 'package:flutter/material.dart';

class FormListPage extends StatefulWidget {
  FormListPage({
    Key? key,
  }) : super(key: key);

  // final String listName;
  // final IconData iconList;

  @override
  State<FormListPage> createState() => _FormListPageState();
}

class _FormListPageState extends State<FormListPage> {
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      child: InkWell(
          //onTap: this.onTap,
          child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: (heightDevice / 100) * 18,
              width: (widthDevice / 100) * 45,
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: (heightDevice / 100) * 2,
                            ),
                            Icon(Icons.add),
                            SizedBox(
                              height: (heightDevice / 100) * 4,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'ชื่อลิสต์'),
                            ),
                            //Text(listName)
                          ],
                        )),
                  ]),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: (heightDevice / 100) * 18,
              width: (widthDevice / 100) * 45,
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 7,
                              runSpacing: 10,
                              children: [
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                                Icon(Icons.add),
                              ],
                            )
                          ],
                        )),
                  ]),
            ),
          )
        ],
      )),
    );
  }
}
