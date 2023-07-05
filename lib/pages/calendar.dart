import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';

class EventCalendarScreen extends StatefulWidget {
  const EventCalendarScreen({Key? key}) : super(key: key);

  @override
  State<EventCalendarScreen> createState() => _EventCalendarScreenState();
}

class _EventCalendarScreenState extends State<EventCalendarScreen> {
  //final List<DateTime> toHighlight = [];
  DateTime dt = DateTime.parse('2023-07-02 03:04:05');
  DateTime dtt = DateTime.parse('2023-07-03 03:04:05');

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDate;

  final List<DateTime> toHighLight = [
    DateTime.parse('2023-07-02 03:04:05'),
    DateTime.parse('2023-07-03 03:04:05')
  ];

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
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: Color(0xff0066C6),
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
                      'Herley',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 110, top: 70),
                    child: Text(
                      '9th',
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
                        "80%",
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
                child: TableCalendar(
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, day, focusedDay) {
                  print(toHighLight);
                  for (DateTime d in toHighLight) {
                    print(day.day);
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
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              firstDay: DateTime(2023),
              lastDay: DateTime(2030),
              focusedDay: _focusedDay,
              // calendarFormat: _calendarFormat,
              // startingDayOfWeek: StartingDayOfWeek.monday,
              // rowHeight: 60,
              // daysOfWeekHeight: 60,
              // daysOfWeekStyle: const DaysOfWeekStyle(
              //   weekdayStyle: TextStyle(color: Colors.cyan),
              // ),
              // calendarStyle: const CalendarStyle(
              //   weekendTextStyle: TextStyle(color: Colors.red),
              //   todayDecoration: BoxDecoration(
              //     color: Colors.blue,
              //     shape: BoxShape.circle,
              //   ),
              //   selectedDecoration: BoxDecoration(
              //     color: Colors.blue,
              //     shape: BoxShape.circle,
              //   ),
              // ),
              // onDaySelected: (selectedDay, focusedDay) {
              //   if (!isSameDay(_selectedDate, selectedDay)) {
              //     setState(() {
              //       _selectedDate = selectedDay;
              //       _focusedDay = focusedDay;
              //     });
              //   }
              // },
              // selectedDayPredicate: (day) {
              //   return isSameDay(_selectedDate, day);
              // },
              // onFormatChanged: (format) {
              //   if (_calendarFormat != format) {
              //     setState(() {
              //       _calendarFormat = format;
              //     });
              //   }
              // },
              // onPageChanged: (focusedDay) {
              //   _focusedDay = focusedDay;
              // },
            )),
          ],
        ),
      ),
    );
  }
}
