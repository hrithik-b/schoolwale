import 'package:flutter/material.dart';
import 'package:schoolwale/pages/eventpage.dart';
import 'package:schoolwale/pages/resultpage.dart';
import 'package:schoolwale/pages/teacher.dart';
import 'package:schoolwale/pages/rules.dart';
import 'package:schoolwale/pages/about.dart';
import 'package:schoolwale/pages/phone.dart';
import 'package:schoolwale/pages/student_virtualID.dart';
import 'package:schoolwale/pages/studentnotes.dart';
import 'package:schoolwale/pages/timetable.dart';
import 'package:schoolwale/pages/calendar.dart';


class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            // ignore: sort_child_properties_last
            child: Text(
              'BIMIT',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/schoolPicture.jpg'))),
          ),
          ListTile(
            leading: const Icon(Icons.event_available_outlined,color:Colors.indigo),

            title: const Text('Attendance'),
           onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const EventCalendarScreen()),
  )}
          ),
          ListTile(
            leading: const Icon(Icons.pending_actions_outlined,color:Colors.indigo),
            title: const Text('Timetable'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const TimeTable()),
  )},
          ),
          ListTile(
            leading: const Icon(Icons.note_add_rounded,color:Colors.indigo),
            title: const Text('Notes'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const classnotes()),
  ) },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_outlined,color:Colors.indigo),
            title: const Text('Results and Report card'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ResultPage()),
  )},
          ),ListTile(
            leading: const Icon(Icons.celebration_rounded,color:Colors.indigo),
            title: const Text('Events'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Eventsupload()),
  ) },
          ),ListTile(
            leading: const Icon(Icons.people_alt_rounded,color:Colors.indigo),
            title: const Text('Teachers'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Teacherstate()),
  )},
          ),ListTile(
            leading: const Icon(Icons.assignment_ind_outlined,color:Colors.indigo),
            title: const Text('Virtual ID'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Virtualid()),
  ) },
          ),ListTile(
            leading: const Icon(Icons.rule_folder_outlined,color:Colors.indigo),
            title: const Text('Rules and Regulations'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Myrules()),
  )},
          ),ListTile(
            leading: const Icon(Icons.domain,color:Colors.indigo),
            title: const Text('About School'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyAbout()),
  )},
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined,color:Colors.indigo),
            title: const Text('Logout'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyPhone()),
  )},
          ),
        ],
      ),
    );
  }
}