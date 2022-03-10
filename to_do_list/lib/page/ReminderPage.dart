import 'package:flutter/material.dart';
import 'package:to_do_list/page/AllListPage.dart';
import 'package:to_do_list/widgets/detailBottom.dart';
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
          const Detailbottom(
            icon: Icons.today,
            headname: 'วันที่',
          ),
          const Detailbottom(
            icon: Icons.access_time,
            headname: 'เวลา',
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/allheadlist');
            },
            child: const ListTile(
              title: Text('ลิสต์'),
              enabled: false,
              trailing: Icon(Icons.arrow_forward_ios),
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
      ),
    );
  }
}
