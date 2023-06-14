
import 'package:flutter/material.dart';
import 'package:schoolwale/pages/annoucement_page.dart';
import 'package:schoolwale/pages/profilepage.dart';
import 'package:schoolwale/pages/resultpage.dart';
import 'package:schoolwale/widgets/slider.dart';
import 'package:schoolwale/widgets/nav_drawer.dart';
import 'package:schoolwale/widgets/carousel_slider.dart';
import 'package:schoolwale/widgets/teachers_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    MyHomePageContent(),
    Announcement(),
    ResultPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Schoolwale';

    return Scaffold(
      drawer: const NavDrawer(),
      appBar: _selectedIndex == 0
          ? AppBar(
        backgroundColor: const Color(0xff0066C6),
        title: Align(
          alignment: Alignment.topRight,
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w800, // Set font weight to bold
              fontSize: 24, // Adjust font size as needed
            ),
          ),
        ),
        titleSpacing: 10,
      )
          : null,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.campaign_outlined),
            label: 'Announcement',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Result',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyHomePageContent extends StatelessWidget {
  const MyHomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/layout-1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'Hello Chintu',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            CustomSlider(),
            CustomCarouselSlider(),
            TeacherWidget(),
          ],
        ),
      ),
    );
  }
}
