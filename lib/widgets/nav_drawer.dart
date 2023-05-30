import 'package:flutter/material.dart';
import 'package:schoolwale/pages/resultpage.dart';

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
            leading: const Icon(Icons.input),
            title: const Text('Attendance'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Timetable'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Notes'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Results and Report card'),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ResultPage()),
  )},
          ),ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Events'),
            onTap: () => {},
          ),ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Teachers'),
            onTap: () => {},
          ),ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Virtual ID'),
            onTap: () => {},
          ),ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Rules and Regulations'),
            onTap: () => {},
          ),ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('About School'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}