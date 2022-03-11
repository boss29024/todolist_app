import 'package:flutter/material.dart';

class DateTimePick extends StatefulWidget {
  DateTimePick({Key? key}) : super(key: key);

  @override
  State<DateTimePick> createState() => _DateTimePickState();
}

class _DateTimePickState extends State<DateTimePick> {
  late DateTime pickedDate;
  late TimeOfDay time;
  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DateTime')),
      body: Container(
          child: Column(
        children: [
          ListTile(
            title: Text(
                'Date: ${pickedDate.year},${pickedDate.month},${pickedDate.day},'),
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap: _pickDate,
          ),
          ListTile(
            title: Text('Time: ${time.hour},${time.minute}'),
            trailing: Icon(Icons.keyboard_arrow_down),
            onTap: _pickTime,
          ),
        ],
      )),
    );
  }

  _pickDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: pickedDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }

  _pickTime() async {
    TimeOfDay? schedule =
        await showTimePicker(context: context, initialTime: time);
    if (schedule != null) {
      setState(() {
        time = schedule;
      });
    }
  }
}
