// import 'package:flutter/material.dart';
// import 'package:schoolwale/pages/annoucement_page.dart';
// import 'package:schoolwale/pages/profilepage.dart';
// import 'package:schoolwale/pages/resultpage.dart';
//
// void main() {
//   runApp(Bottomnav());
// }
//
// class Bottomnav extends StatelessWidget {
//   const Bottomnav({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Bottom Navigation Bar',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text('Flutter Bottom Navigation Bar'),
//       // ),
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: [
//           MyHomePage(),
//           annoucement(),
//           ResultPage(),
//           Myprofile()
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.help),
//             label: 'Help',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.help),
//             label: 'Help',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blue,
//         onTap: (int index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// //
// // /*
// // import 'package:flutter/material.dart';
// //
// // class BottomNav extends StatefulWidget{
// //   @override
// //   _BottomNavState createState()=> _BottomNavState();
// // }
// // class _BottomNavState extends State<BottomNav>{
// //    int _currentIndex = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       bottomNavigationBar: BottomNavigationBar(
// //         type: BottomNavigationBarType.fixed,
// //         currentIndex: _currentIndex,
// //         backgroundColor: Colors.white,
// //         selectedItemColor: Colors.blue,
// //
// //         onTap: (value) {
// //           // Respond to item press.
// //           setState(() => _currentIndex = value);
// //         },
// //         items: [
// //           BottomNavigationBarItem(
// //             label: 'Favorites',
// //             icon: Icon(Icons.favorite),
// //           ),
// //           BottomNavigationBarItem(
// //             title: Text('Music'),
// //             icon: Icon(Icons.music_note),
// //           ),
// //           BottomNavigationBarItem(
// //             title: Text('Places'),
// //             icon: Icon(Icons.location_on),
// //           ),
// //           BottomNavigationBarItem(
// //             title: Text('News'),
// //             icon: Icon(Icons.library_books),
// //           ),
// //           ],
// //       ),
// //     );
// //   }
// //
// // }*/
// // import 'package:flutter/material.dart';
// // import 'package:titled_navigation_bar/titled_navigation_bar.dart';
// //
// // void main() => runApp(Bottomnav());
// //
// // class Bottomnav extends StatelessWidget {
// //   const Bottomnav({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Titled Bar',
// //       home: HomePage(),
// //     );
// //   }
// // }
// //
// // class HomePage extends StatefulWidget {
// //   @override
// //   State createState() => _HomePageState();
// // }
// //
// // class _HomePageState extends State<HomePage> {
// //   final List<TitledNavigationBarItem> items = [
// //     TitledNavigationBarItem(title: Text('Home'), icon: Icons.home),
// //     TitledNavigationBarItem(title: Text('Annoucements'), icon: Icons.campaign_outlined),
// //     TitledNavigationBarItem(title: Text('Results'), icon: Icons.menu_book_outlined),
// //     TitledNavigationBarItem(title: Text('Profile'), icon: Icons.person_outlined),
// //
// //   ];
// //
// //   bool navBarMode = false;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // appBar: AppBar(
// //       //   title: Text("Titled Bottom Bar"),
// //       // ),
// //       body: Center(
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: <Widget>[
// //             Text("Reversed mode:"),
// //             Switch(
// //               value: navBarMode,
// //               onChanged: (v) {
// //                 setState(() => navBarMode = v);
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: TitledBottomNavigationBar(
// //         onTap: (index) => print("Selected Index: $index"),
// //         reverse: navBarMode,
// //         curve: Curves.easeInBack,
// //         items: items,
// //         activeColor: Colors.blueAccent,
// //         inactiveColor: Colors.blueGrey,
// //       ),
// //     );
// //   }
// // }
// //
