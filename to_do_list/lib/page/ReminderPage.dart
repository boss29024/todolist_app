import 'package:flutter/material.dart';
import 'package:to_do_list/widgets/detailsBottom.dart';
// import 'package:to_do_list/page/DetailPage.dart';

class ReminderPage extends StatefulWidget {
  ReminderPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    final widthDevice = MediaQuery.of(context).size.width;
    return Container(
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
          const Detailsbottom(
            icon: Icons.today,
            headname: 'วันที่',
          ),
          const Detailsbottom(
            icon: Icons.access_time,
            headname: 'เวลา',
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            onPressed: () {},
            child: const ListTile(
              title: Text('ลิสต์'),
              enabled: false,
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
