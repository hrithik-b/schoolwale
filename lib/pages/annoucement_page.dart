//
// import 'package:flutter/material.dart';
// import 'package:schoolwale/pages/profilepage.dart';
// import 'package:schoolwale/pages/resultpage.dart';
//
// import '../widgets/announcement_items.dart';
// import 'homepage.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: annoucement(),
//     );
//   }
// }
//
// class annoucement extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_new),
//           onPressed: () {
//             // Define the action to be performed when the arrow icon is pressed
//             // For example, you can navigate to the previous screen
//             Navigator.pop(context);
//           },
//         ),
//          backgroundColor: Color(0xff0066C6),
//         title: Text('Announcements'),
//         centerTitle: true,
//         actions: [
//           PopupMenuButton(
//             itemBuilder: (BuildContext context) {
//               return [
//                 PopupMenuItem(
//                   child: Text('Today'),
//                   value: 'today',
//                 ),
//                 PopupMenuItem(
//                   child: Text('This Week'),
//                   value: 'This week',
//                 ),
//                 PopupMenuItem(
//                   child: Text('This Month'),
//                   value: 'This Month',
//                 ),
//                 PopupMenuItem(
//                   child: Text('last month'),
//                   value: 'last month',
//                 ),
//                 PopupMenuItem(
//                   child: Text('All'),
//                   value: 'All',
//                 ),
//
//               ];
//             },
//           ),
//         ],
//       ),
//       body: Center(
//       child: ListView(
//       children: [
//         annoucementsUpdate(Annoucementname: 'School Openning', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon:Icons.warehouse, ),
//         annoucementsUpdate(Annoucementname: 'Inaurgration Ceremony', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon: Icons.celebration_outlined,),
//         annoucementsUpdate(Annoucementname: 'Sports day', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon: Icons.sports_cricket_outlined,),
//         annoucementsUpdate(Annoucementname: 'Internal Exam', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon:Icons.e_mobiledata,),
//         annoucementsUpdate(Annoucementname: 'Parents Teacher Meetting', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon:Icons.people_outline,),
//       ],
//       ),
//       ),
//       // bottomNavigationBar: BottomAppBar(
//       //
//       //   shape: CircularNotchedRectangle(),
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //
//       //     children: [
//       //
//       //       IconButton(
//       //
//       //         icon: Icon(Icons.home_outlined,
//       //           size: 30.0,
//       //           color: Colors.blue[700]!,
//       //         ),
//       //         onPressed: () {
//       //           Navigator.push(
//       //             context,
//       //             MaterialPageRoute(builder: (context) =>  MyHomePage()),
//       //
//       //           );
//       //         },
//       //
//       //
//       //       ),
//       //       IconButton(
//       //         icon: Icon(Icons.campaign_outlined,size: 30.0,color:Colors.blue[700]!),
//       //         onPressed: () {
//       //           Navigator.push(
//       //             context,
//       //             MaterialPageRoute(builder: (context) =>  annoucement()),
//       //           );
//       //         },
//       //       ),
//       //       IconButton(
//       //         icon: Icon(Icons.menu_book_outlined,size: 30.0,color: Colors.blue[700]!),
//       //         onPressed: () {
//       //           Navigator.push(
//       //             context,
//       //             MaterialPageRoute(builder: (context) => ResultPage()),
//       //           );
//       //           // Home action
//       //         },
//       //       ),
//       //       IconButton(
//       //         icon: Icon(Icons.person_outline,size: 30.0,color: Colors.blue[700]!),
//       //         onPressed: () {
//       //           Navigator.push(
//       //             context,
//       //             MaterialPageRoute(builder: (context) => Myprofile()),
//       //           );
//       //         },
//       //       ),
//       //       // selectedItemColor: Colors.blue,
//       //       // unselectedItemColor: Colors.grey,
//       //     ],
//       //     //  currentIndex:0,
//       //     //  selectedItemColor:Colors.blue,
//       //   ),
//       // ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:schoolwale/pages/profilepage.dart';
import 'package:schoolwale/pages/resultpage.dart';

import '../widgets/announcement_items.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Announcement(),
    );
  }
}

class Announcement extends StatelessWidget {
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
        backgroundColor: Color(0xff0066C6),
        title: Text('Announcements'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Today'),
                  value: 'today',
                ),
                PopupMenuItem(
                  child: Text('This Week'),
                  value: 'This week',
                ),
                PopupMenuItem(
                  child: Text('This Month'),
                  value: 'This Month',
                ),
                PopupMenuItem(
                  child: Text('last month'),
                  value: 'last month',
                ),
                PopupMenuItem(
                  child: Text('All'),
                  value: 'All',
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            annoucementsUpdate(
              Annoucementname: 'School Opening',
              Annocementsdate: '29 - 05 - 2023, 9 AM',
              AnnocementsUpdateddate: 'Created on 12/12/2023',
              icon: Icons.warehouse,
            ),
            annoucementsUpdate(
              Annoucementname: 'Inauguration Ceremony',
              Annocementsdate: '29 - 05 - 2023, 9 AM',
              AnnocementsUpdateddate: 'Created on 12/12/2023',
              icon: Icons.celebration_outlined,
            ),
            annoucementsUpdate(
              Annoucementname: 'Sports Day',
              Annocementsdate: '29 - 05 - 2023, 9 AM',
              AnnocementsUpdateddate: 'Created on 12/12/2023',
              icon: Icons.sports_cricket_outlined,
            ),
            annoucementsUpdate(
              Annoucementname: 'Internal Exam',
              Annocementsdate: '29 - 05 - 2023, 9 AM',
              AnnocementsUpdateddate: 'Created on 12/12/2023',
              icon: Icons.e_mobiledata,
            ),
            annoucementsUpdate(
              Annoucementname: 'Parents Teacher Meeting',
              Annocementsdate: '29 - 05 - 2023, 9 AM',
              AnnocementsUpdateddate: 'Created on 12/12/2023',
              icon: Icons.people_outline,
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.campaign_outlined),
      //       label: 'Announcement',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.menu_book_outlined),
      //       label: 'Results',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: 1, // Set the current index to 1 for the Announcement screen
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      //   onTap: (index) {
      //     if (index == 0) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => MyHomePage()),
      //       );
      //     } else if (index == 2) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => ResultPage()),
      //       );
      //     } else if (index == 3) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => Myprofile()),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
