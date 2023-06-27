
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey, // Adjust the color of the line
                width: 1.0, // Adjust the thickness of the line
              ),
            ),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    Icon(Icons.home_outlined),
                    if (_selectedIndex == 0)
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 2,
                          color: Colors.blueAccent, // Adjust the color of the line
                        ),
                      ),
                  ],
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    Icon(Icons.campaign_outlined),
                    if (_selectedIndex == 1)
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 2,
                          color: Colors.blueAccent, // Adjust the color of the line
                        ),
                      ),
                  ],
                ),
                label: 'Announcement',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    Icon(Icons.menu_book_outlined),
                    if (_selectedIndex == 2)
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 2,
                          color: Colors.blueAccent, // Adjust the color of the line
                        ),
                      ),
                  ],
                ),
                label: 'Result',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  children: [
                    Icon(Icons.person_outline),
                    if (_selectedIndex == 3)
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 2,
                          color: Colors.blueAccent, // Adjust the color of the line
                        ),
                      ),
                  ],
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTapped,
            iconSize: 30,
          ),
        ),
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
                    fontStyle: FontStyle.italic, // Set the text to italic font
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
