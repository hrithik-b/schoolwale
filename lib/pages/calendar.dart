import 'package:flutter/material.dart';
import 'package:schoolwale/services/attendance_service.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';

import '../Models/attendance_class.dart';
import '../constants/constant_fields.dart';

class EventCalendarScreen extends StatefulWidget {
  const EventCalendarScreen({Key? key}) : super(key: key);

  @override
  State<EventCalendarScreen> createState() => _EventCalendarScreenState();
}

class _EventCalendarScreenState extends State<EventCalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDate;
//store the abstent dates in the format ('2023-07-11 03:04:05'),
  final List<DateTime> toHighLight = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedDate = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text('Attendance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),

                    // width: double.infinity,
                    // height: (MediaQuery.of(context).size.height)/10*1.5,
                    //  width: (MediaQuery.of(context).size.width)/10*10,
                    height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 6.0,
                          spreadRadius: 6.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ],
                      color: Color.fromARGB(255, 93, 156, 216),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 50, top: 40),

                    // height: (MediaQuery.of(context).size.height)/10*1.5,
                    // width: (MediaQuery.of(context).size.width)/10*8,
                    height: 100,
                    width: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        height: 50,
                        width: 50,
                        'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 110, top: 40),
                    child: Text(
                      'Chintu',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 110, top: 70),
                    child: Text(
                      '3 B',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 250, top: 40),
                    child: CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 8.0,
                      animation: true,
                      percent: 0.7,
                      center: Text(
                        "94%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )
                ],
              ),
            ),
            Container(
                child: StreamBuilder(
              stream: AttendanceService().attendanceList,
              builder: (BuildContext context,
                  AsyncSnapshot<List<AttendanceClass>> snapshot) {
                if (snapshot.hasError ||
                    snapshot.connectionState == ConnectionState.waiting) {
                  print(snapshot.error);
                  return Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.red,
                      strokeWidth: 6,
                    ),
                  );
                }
                final documents = snapshot.data ?? [];
                for (var data in documents) {
                  //checking if the current user is present in the absentees list
                  if (data.absentees.contains(currentUser)) {
                    //DateTime.parse('2023-07-11 03:04:05'),

                    DateTime inputDate =
                        DateFormat('dd-MM-yyyy').parse(data.date);

                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(inputDate);
                    // print(formattedDate);
                    DateTime dt = DateFormat('yyyy-MM-dd').parse(formattedDate);
                    //print("Formatted $dt");
                    toHighLight.add(dt);
                    // print(toHighLight);
                  }
                }

                return TableCalendar(
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      // print(toHighLight);
                      for (DateTime d in toHighLight) {
                        //print(day.day);
                        if (day.day == d.day &&
                            day.month == d.month &&
                            day.year == d.year) {
                          return Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,

                              color: Colors.red,
                              // borderRadius: BorderRadius.all(
                              //   Radius.circular(60.0),
                              // ),
                            ),
                            child: Center(
                              child: Text(
                                '${day.day}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                          );
                        }
                      }
                      return null;
                    },
                  ),
                  eventLoader: (dt) {
                    return [];
                  },
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  firstDay: DateTime(2023),
                  lastDay: DateTime(2025),
                  focusedDay: _focusedDay,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
