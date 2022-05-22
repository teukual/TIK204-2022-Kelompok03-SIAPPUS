import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HalamanAgenda extends StatelessWidget {
  const HalamanAgenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Daftar Agenda',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              TableCalendar(
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                  headerVisible: false,
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14)),
              Container(
                margin: EdgeInsets.only(top: 100),
                padding: EdgeInsets.symmetric(horizontal: 50),
                decoration: ShapeDecoration(
                    color: Colors.black, shape: StadiumBorder()),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Kembali',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
