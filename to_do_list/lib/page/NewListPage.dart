import 'package:flutter/material.dart';

class NewListPage extends StatefulWidget {
  NewListPage({
    Key? key,
  }) : super(key: key);

  // final String listName;
  // final IconData iconList;

  @override
  State<NewListPage> createState() => _NewListPageState();
}

class _NewListPageState extends State<NewListPage> {
  TextEditingController listTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      child: InkWell(
          child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: (heightDevice / 100) * 18,
              width: widthDevice,
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), hintText: 'ชื่อลิสต์'),
                      controller: listTextController,
                    ),
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text('เพิ่ม'),
                  onPressed: () => Navigator.pop(context),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: const Text('ยกเลิก'),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
