// // // import 'package:flutter/material.dart';
// // // import 'package:schoolwale/pages/annoucement_page.dart';
// // // import 'package:schoolwale/pages/profilepage.dart';
// // // import 'package:schoolwale/pages/resultpage.dart';
// // //
// // // import 'package:schoolwale/widgets/slider.dart';
// // // import 'package:schoolwale/widgets/nav_drawer.dart';
// // // import 'package:schoolwale/widgets/carousel_slider.dart';
// // // import 'package:schoolwale/widgets/teachers_widget.dart';
// // //
// // //
// // //
// // // class MyHomePage extends StatelessWidget{
// // //
// // //   const MyHomePage({super.key});
// // //
// // //   get selectedItemColor => null;
// // //
// // //  @override
// // //   Widget build(BuildContext context) {
// // //
// // //     const title = 'Schoolwale';
// // //
// // //     return Scaffold(
// // //
// // //       drawer: const NavDrawer(),
// // //         appBar: AppBar(
// // //           backgroundColor: Color(0xff0066C6),
// // //           title:const Align(
// // //
// // //             alignment: Alignment.center,
// // //             child: Text(title),
// // //             //color: Colors.blue,
// // //
// // //           ),
// // //         ),
// // //
// // //         body: SingleChildScrollView(
// // //           scrollDirection: Axis.vertical,
// // //           child: Container(
// // //
// // //             alignment: Alignment.bottomCenter,
// // //             //constraints: const BoxConstraints.expand(),
// // //             decoration: const BoxDecoration(
// // //               image: DecorationImage(
// // //                 image: AssetImage("assets/images/layout-1.png"),
// // //                 fit: BoxFit.cover,
// // //               ),
// // //             ),
// // //
// // //             child: Column
// // //               (
// // //               mainAxisAlignment: MainAxisAlignment.start,
// // //
// // //               children: <Widget>[
// // //                 Container(
// // //
// // //                   child: const Padding(
// // //                     padding: EdgeInsets.only(top:30,left: 20),
// // //                     child: Text('Hello Chintu',  textAlign: TextAlign.left,
// // //                       style: TextStyle(
// // //                           color:Colors.white70,
// // //                           fontSize: 30,
// // //                           fontWeight: FontWeight.bold
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 //end
// // //
// // //                 const CustomSlider(),
// // //                 const CustomCarouselSlider(),
// // //                 const TeacherWidget(),
// // //
// // //               ],
// // //             ),
// // //           ),
// // //
// // //         ),
// // //
// // //
// // //    bottomNavigationBar: BottomAppBar(
// // //
// // //         shape: CircularNotchedRectangle(),
// // //         child: Row(
// // //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //
// // //           children: [
// // //
// // //             IconButton(
// // //
// // //               icon: Icon(Icons.home_outlined,
// // //                 size: 30.0,
// // //                 color: Colors.blue[700]!,
// // //               ),
// // //               onPressed: () {
// // //                 Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(builder: (context) =>  MyHomePage()),
// // //
// // //                 );
// // //                 },
// // //
// // //
// // //             ),
// // //          IconButton(
// // //               icon: Icon(Icons.campaign_outlined,size: 30.0,color:Colors.blue[700]!),
// // //               onPressed: () {
// // //                 Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(builder: (context) =>  annoucement()),
// // //                 );
// // //               },
// // //             ),
// // //             IconButton(
// // //               icon: Icon(Icons.menu_book_outlined,size: 30.0,color: Colors.blue[700]!),
// // //               onPressed: () {
// // //                 Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(builder: (context) => ResultPage()),
// // //                 );
// // //                 // Home action
// // //               },
// // //             ),
// // //             IconButton(
// // //               icon: Icon(Icons.person_outline,size: 30.0,color: Colors.blue[700]!),
// // //               onPressed: () {
// // //                 Navigator.push(
// // //                   context,
// // //                   MaterialPageRoute(builder: (context) => Myprofile()),
// // //                 );
// // //               },
// // //             ),
// // //             // selectedItemColor: Colors.blue,
// // //             // unselectedItemColor: Colors.grey,
// // //         ],
// // //       //  currentIndex:0,
// // //       //  selectedItemColor:Colors.blue,
// // //         ),
// // //    ),
// // //     );
// // //         }
// // //
// // //   }
// // import 'package:flutter/material.dart';
// // import 'package:schoolwale/pages/annoucement_page.dart';
// // import 'package:schoolwale/pages/profilepage.dart';
// // import 'package:schoolwale/pages/resultpage.dart';
// // import 'package:schoolwale/widgets/announcement_items.dart';
// //
// // import 'package:schoolwale/widgets/slider.dart';
// // import 'package:schoolwale/widgets/nav_drawer.dart';
// // import 'package:schoolwale/widgets/carousel_slider.dart';
// // import 'package:schoolwale/widgets/teachers_widget.dart';
// //
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({Key? key});
// //
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   int _selectedIndex = 0;
// //
// //   static List<Widget> _widgetOptions = <Widget>[
// //     MyHomePage(),
// //     Announcement(),
// //     ResultPage(),
// //     Myprofile(),
// //   ];
// //
// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     const title = 'Schoolwale';
// //
// //     return Scaffold(
// //       drawer: const NavDrawer(),
// //       appBar: AppBar(
// //         backgroundColor: const Color(0xff0066C6),
// //         title: const Align(
// //           alignment: Alignment.center,
// //           child: Text(title),
// //         ),
// //       ),
// //       body: SingleChildScrollView(
// //         scrollDirection: Axis.vertical,
// //         child: Container(
// //           alignment: Alignment.bottomCenter,
// //           decoration: const BoxDecoration(
// //             image: DecorationImage(
// //               image: AssetImage("assets/images/layout-1.png"),
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.start,
// //             children: const <Widget>[
// //               Padding(
// //                 padding: EdgeInsets.only(top: 30, left: 20),
// //                 child: Text(
// //                   'Hello Chintu',
// //                   textAlign: TextAlign.left,
// //                   style: TextStyle(
// //                     color: Colors.white70,
// //                     fontSize: 30,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //                 ),
// //               ),
// //               CustomSlider(),
// //               CustomCarouselSlider(),
// //               TeacherWidget(),
// //             ],
// //           ),
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home_outlined),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.campaign_outlined),
// //             label: 'Announcement',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.menu_book_outlined),
// //             label: 'Result',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.person_outline),
// //             label: 'Profile',
// //           ),
// //         ],
// //         currentIndex: _selectedIndex,
// //         selectedItemColor: Colors.blue,
// //         unselectedItemColor: Colors.grey,
// //         onTap: _onItemTapped,
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:schoolwale/pages/annoucement_page.dart';
// import 'package:schoolwale/pages/profilepage.dart';
//
// import 'package:schoolwale/pages/resultpage.dart';
// import 'package:schoolwale/widgets/announcement_items.dart';
// import 'package:schoolwale/widgets/slider.dart';
// import 'package:schoolwale/widgets/nav_drawer.dart';
// import 'package:schoolwale/widgets/carousel_slider.dart';
// import 'package:schoolwale/widgets/teachers_widget.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//
//   static List<Widget> _widgetOptions = <Widget>[
//     MyHomePageContent(),
//     Announcement(),
//     ResultPage(),
//     Myprofile(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     const title = 'Schoolwale';
//
//     return Scaffold(
//       drawer: const NavDrawer(),
//       appBar: AppBar(
//         backgroundColor: const Color(0xff0066C6),
//         title: const Align(
//           alignment: Alignment.center,
//           child: Text(title),
//         ),
//       ),
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.campaign_outlined),
//             label: 'Announcement',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.menu_book_outlined),
//             label: 'Result',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
//
// class MyHomePageContent extends StatelessWidget {
//   const MyHomePageContent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Container(
//         alignment: Alignment.bottomCenter,
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/layout-1.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: const <Widget>[
//             Padding(
//               padding: EdgeInsets.only(top: 30, left: 20),
//               child: Text(
//                 'Hello Chintu',
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                   color: Colors.white70,
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             CustomSlider(),
//             CustomCarouselSlider(),
//             TeacherWidget(),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:schoolwale/pages/annoucement_page.dart';
import 'package:schoolwale/pages/profilepage.dart';
import 'package:schoolwale/pages/resultpage.dart';
import 'package:schoolwale/widgets/announcement_items.dart';
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
              title: const Align(
                alignment: Alignment.center,
                child: Text(title),
              ),
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
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                'Hello Chintu',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
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
