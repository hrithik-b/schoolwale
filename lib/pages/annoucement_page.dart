
import 'package:flutter/material.dart';

import '../widgets/announcement_items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: annoucement(),
    );
  }
}

class annoucement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Define the action to be performed when the arrow icon is pressed
            // For example, you can navigate to the previous screen
            Navigator.pop(context);
          },
        ),
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
        annoucementsUpdate(Annoucementname: 'School Openning', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon:Icons.warehouse, ),
        annoucementsUpdate(Annoucementname: 'Inaurgration Ceremony', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon: Icons.celebration_outlined,),
        annoucementsUpdate(Annoucementname: 'Sports day', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon: Icons.sports_cricket_outlined,),
        annoucementsUpdate(Annoucementname: 'Internal Exam', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon:Icons.e_mobiledata,),
        annoucementsUpdate(Annoucementname: 'Parents Teacher Meetting', Annocementsdate:'29 - 05 - 2023 ,9 AM', AnnocementsUpdateddate:'created on 12/12/2023', icon:Icons.people_outline,),
        // Card(
        //   elevation: 8,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Container(
        //     height: 150,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(
        //             Icons.warehouse,
        //           color: Colors.blue,
        //         ),
        //         Text('School openning',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           ' 29 - 05 - 2023 ,9 AM',
        //           textAlign: TextAlign.left,
        //         ),
        //         Text(
        //           ' created on 12/12/2023',
        //           textAlign: TextAlign.left,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   elevation: 8,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Container(
        //     height: 150,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(Icons.celebration_outlined,
        //           color: Colors.blue,
        //         ),
        //         Text(
        //           'innaugration ceramony',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           ' 29 - 05 - 2023 ,9 AM',
        //           textAlign: TextAlign.left,
        //         ),
        //         Text(
        //           ' created on 12/12/2023',
        //           textAlign: TextAlign.left,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   elevation: 8,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Container(
        //     height: 150,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(Icons.explicit_outlined,
        //           color: Colors.blue,
        //         ),
        //         Text(
        //           'Internal exam',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           ' 29 - 05 - 2023 ,9 AM',
        //           textAlign: TextAlign.left,
        //         ),
        //         Text(
        //           ' created on 12/12/2023',
        //           textAlign: TextAlign.left,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   elevation: 8,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Container(
        //     height: 150,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(Icons.people_outline,
        //           color: Colors.blue,
        //         ),
        //         Text(
        //           'Parents teacher meeting',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           ' 29 - 05 - 2023 ,9 AM',
        //           textAlign: TextAlign.left,
        //         ),
        //         Text(
        //           ' created on 12/12/2023',
        //           textAlign: TextAlign.left,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   elevation: 8,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Container(
        //     height: 150,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(Icons.sports_cricket_outlined,
        //           color: Colors.blue,
        //         ),
        //         Text(
        //           'Sports day',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           ' 29 - 05 - 2023 ,9 AM',
        //           textAlign: TextAlign.left,
        //         ),
        //         Text(
        //           ' created on 12/12/2023',
        //           textAlign: TextAlign.left,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   elevation: 8,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Container(
        //     height: 150,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(Icons.holiday_village_outlined,
        //           color: Colors.blue,
        //         ),
        //         Text(
        //           'holiday regarding fest',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           ' 29 - 05 - 2023 ,9 AM',
        //           textAlign: TextAlign.left,
        //         ),
        //         Text(
        //           ' created on 12/12/2023',
        //           textAlign: TextAlign.left,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Card(
        //   elevation: 8,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Container(
        //     height: 150,
        //     width: 200,
        //     alignment: Alignment.center,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //
        //         Icon(Icons.emoji_events_outlined,
        //           color: Colors.blue,
        //         ),
        //         Text(
        //           'Annual Day',
        //           textAlign: TextAlign.center,
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         Text(
        //           ' 29 - 05 - 2023 ,9 AM',
        //           textAlign: TextAlign.left,
        //         ),
        //         Text(
        //           ' created on 12/12/2023',
        //           textAlign: TextAlign.left,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
      ),
      ),
    );
  }
}
