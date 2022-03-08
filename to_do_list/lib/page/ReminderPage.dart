import 'package:flutter/material.dart';

class ReminderPage extends StatefulWidget {
  ReminderPage({
    Key? key,
  }) : super(key: key);

  // final String listName;
  // final IconData iconList;

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
      child: InkWell(
          //onTap: this.onTap,
          child: Column(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              height: (heightDevice / 100) * 23,
              width: widthDevice,
              padding: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: (heightDevice / 100) * 1,
                            ),
                            Text('ชื่อเรื่อง'),
                            SizedBox(
                              height: (heightDevice / 100) * 4,
                            ),
                            Text('โน้ต'),
                            SizedBox(
                              height: (heightDevice / 100) * 4,
                            ),
                          ],
                        )),
                  ]),
            ),
          ),
          SizedBox(
            height: (heightDevice / 100) * 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            onPressed: () {},
            child: const ListTile(
              title: Text('รายละเอียด'),
              enabled: false,
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          SizedBox(
            height: (heightDevice / 100) * 1,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            onPressed: () {},
            child: const ListTile(
              title: Text('ลิสต์'),
              enabled: false,
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          )
        ],
      )),
    );
  }
}
