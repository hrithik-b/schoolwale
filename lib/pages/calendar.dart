import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';

import '../Models/attendance_class.dart';
import '../constants/constant_fields.dart';
import '../services/attendance_service.dart';

class EventCalendarScreen extends StatefulWidget {
  const EventCalendarScreen({Key? key}) : super(key: key);

  @override
  State<EventCalendarScreen> createState() => _EventCalendarScreenState();
}

class _EventCalendarScreenState extends State<EventCalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDate;
  final List<DateTime> toHighLight = [];

  final user = FirebaseAuth.instance.currentUser;
  String phone = '+91';

  @override
  void initState() {
    super.initState();
    _selectedDate = _focusedDay;

    if (user?.phoneNumber != null) {
      phone = user!.phoneNumber!.substring(3);
    }
  }

  Future<Map<String, dynamic>> fetchStudentData() async {
    final snapshot = await FirebaseFirestore.instance
        .collection("Students")
        .where("Registered_number", isEqualTo: phone)
        .get();

    if (snapshot.docs.isNotEmpty) {
      return snapshot.docs.first.data() as Map<String, dynamic>;
    }

    return {};
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
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
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
              child: FutureBuilder<Map<String, dynamic>>(
                future: fetchStudentData(),
                builder: (context, snapshot) {
                  if (snapshot.hasError ||
                      snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  final studentData = snapshot.data;
                  final studentName = studentData?['Full Name'] ?? 'N/A';
                  final className = studentData?['Class'] ?? 'N/A';
                  final section = studentData?['Section'] ?? 'N/A';
                  final photoUrl = studentData?['ImageUrl'] ?? '';

                  return Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.network(
                            photoUrl,
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              studentName,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '$className $section',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: CircularPercentIndicator(
                          radius: 30.0,
                          lineWidth: 8.0,
                          animation: true,
                          percent: 0.7,
                          center: Text(
                            "94%",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  );
                },
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
                  if (data.absentees.contains(currentUser)) {
                    DateTime inputDate =
                        DateFormat('dd-MM-yyyy').parse(data.date);

                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(inputDate);
                    DateTime dt = DateFormat('yyyy-MM-dd').parse(formattedDate);
                    toHighLight.add(dt);
                  }
                }

                return TableCalendar(
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      for (DateTime d in toHighLight) {
                        if (day.day == d.day &&
                            day.month == d.month &&
                            day.year == d.year) {
                          return Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
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
