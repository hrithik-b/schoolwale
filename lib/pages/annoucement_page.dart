// import 'package:flutter/material.dart';
// import 'package:schoolwale/pages/profilepage.dart';
// import 'package:schoolwale/pages/resultpage.dart';
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
//       home: Announcement(),
//     );
//   }
// }
//
// class Announcement extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // leading: IconButton(
//         //   icon: Icon(Icons.arrow_back_ios_new),
//         //   onPressed: () {
//         //     Navigator.pop(context);
//         //   },
//         // ),
//         backgroundColor: Color(0xff0066C6),
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
//               ];
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             annoucementsUpdate(
//               Annoucementname: 'School Opening',
//               Annocementsdate: '29 - 05 - 2023, 9 AM',
//               AnnocementsUpdateddate: 'Created on 12/12/2023',
//               icon: Icons.warehouse,
//             ),
//             annoucementsUpdate(
//               Annoucementname: 'Inauguration Ceremony',
//               Annocementsdate: '29 - 05 - 2023, 9 AM',
//               AnnocementsUpdateddate: 'Created on 12/12/2023',
//               icon: Icons.celebration_outlined,
//             ),
//             annoucementsUpdate(
//               Annoucementname: 'Sports Day',
//               Annocementsdate: '29 - 05 - 2023, 9 AM',
//               AnnocementsUpdateddate: 'Created on 12/12/2023',
//               icon: Icons.sports_cricket_outlined,
//             ),
//             annoucementsUpdate(
//               Annoucementname: 'Internal Exam',
//               Annocementsdate: '29 - 05 - 2023, 9 AM',
//               AnnocementsUpdateddate: 'Created on 12/12/2023',
//               icon: Icons.e_mobiledata,
//             ),
//             annoucementsUpdate(
//               Annoucementname: 'Parents Teacher Meeting',
//               Annocementsdate: '29 - 05 - 2023, 9 AM',
//               AnnocementsUpdateddate: 'Created on 12/12/2023',
//               icon: Icons.people_outline,
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/announcement_items.dart';

class Announcement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  child: Text('Last Month'),
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
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Announcements").get(),
        builder: (context, snapshot) {
          if (snapshot.hasError || snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          final data = snapshot.data!.docs;
          final announcements = data.map((doc) => doc.data()).toList();
          return AnnouncementPageContent(announcements: announcements);
        },
      ),
    );
  }
}

class AnnouncementPageContent extends StatelessWidget {
  final List<Map<String, dynamic>> announcements;

  const AnnouncementPageContent({Key? key, required this.announcements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: announcements.length,
      itemBuilder: (context, index) {
        final announcement = announcements[index];
        return annoucementsUpdate(
          Annoucementname: announcement['AnnName'],
          Annocementsdate: announcement['scheduledDate'],
          // AnnouncementDescription:announcement['description'],
          AnnocementsUpdateddate: announcement['CreateDate'],

          // icon: announcement['icon'],
        );
      },
    );
  }
}