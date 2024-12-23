import 'package:flutter/cupertino.dart';

class AttendanceItem extends StatelessWidget {
  final String srNumber;
  final String name;
  final String punchType;
  final String date;
  final String time;

  AttendanceItem(
      {required this.srNumber,
      required this.name,
      required this.punchType,
      required this.date,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: CupertinoColors.white, 
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(srNumber),
              Text(name),
              Text(punchType),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(date),
                  Text(time),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
