import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/time_table_item.dart';
import 'package:photo_view/photo_view.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
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
          backgroundColor: Color(0xff0066C6),
          title: Text('Timetable'),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("Timetable")
                .doc('1 A')
                .get(),
            builder: (context, snapshot) {
              if (snapshot.hasError ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final data = snapshot.data!.data() as Map<String,dynamic>;
            //  final imageUrl = (data?['imageUrl']) as String;
            final String  className= snapshot.data!.id;
          //  print("classname "+ className);
                     // final section = data['section'];
                      final imageUrl = data[className.substring(2)]['imageUrl'];
              return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
// height: ((MediaQuery.of(context).size.height) / 10) * 7,
// width: ((MediaQuery.of(context).size.width) / 10) * 9,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          (MediaQuery.of(context).size.width) / 10 * 0.5),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                       InteractiveViewer(
                        panEnabled: false, // Set it to false
                        boundaryMargin: EdgeInsets.all(100),
                        minScale: 0.5,
                        maxScale: 2,
                        child: Image.network(
                          imageUrl,
                          width: ((MediaQuery.of(context).size.width) / 10) * 9,
                          height:
                              ((MediaQuery.of(context).size.height) / 10) * 5,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Center(child:Text(
                        className,style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    
                    
                  ),
                      ) 
                      ,)
                   ], ),
                    ),
                  ]);
            }
            // body: Column(
            //   children: [
            //     Row(
            //       // mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //
            //         MyButton(
            //           buttonText: 'M',
            //           onPressed: () {
            //             Color.fromARGB(255, 10, 13, 180);
            //           },
            //         ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //         MyButton(
            //           buttonText: 'T',
            //         ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //         MyButton(
            //           buttonText: 'W',
            //         ),
            //         MyButton(
            //           buttonText: 'T',
            //         ),
            //         MyButton(
            //           buttonText: 'F',
            //         ),
            //         MyButton(
            //           buttonText: 'S',
            //         ),
            //       ],
            //     ),
            //     Container(),
            //     SizedBox(height: 10),
            //     Container(
            //       height: MediaQuery.of(context).size.height - 160,
            //
            //       child: SingleChildScrollView(
            //         scrollDirection: Axis.vertical,
            //         child: Column(
            //           children: [
            //             Column(
            //               children: [
            //                 TimeTableItem(
            //                   timetext1: '9:00 AM',
            //                   timetext2: '10:45 AM',
            //                   subtext: 'English',
            //                   imageURL:
            //                       'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?w=2000',
            //                   name: 'Ms.Joylin',
            //                 ),
            //                 TimeTableItem(
            //                   timetext1: '11:00 AM',
            //                   timetext2: '11:45 AM',
            //                   subtext: 'Maths',
            //                   imageURL:
            //                       'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?w=2000',
            //                   name: 'Mr.Jevian',
            //                 ),
            //                 TimeTableItem(
            //                   timetext1: '12:00 AM',
            //                   timetext2: '12:45 PM',
            //                   subtext: 'Social Science',
            //                   imageURL:
            //                       'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?w=2000',
            //                   name: 'Ms.Malini',
            //                 ),
            //                 TimeTableItem(
            //                   timetext1: '1:50 PM',
            //                   timetext2: '2:30 PM',
            //                   subtext: 'Science',
            //                   imageURL:
            //                       'https://t4.ftcdn.net/jpg/03/98/85/77/360_F_398857704_n44BPhqM68Xk9vT31BeFkLQwWsgeZS6C.jpg',
            //                   name: 'Mr.Ram',
            //                 ),
            //                 TimeTableItem(
            //                   timetext1: '2:40 PM',
            //                   timetext2: '3:30 PM',
            //                   subtext: 'Kannada',
            //                   imageURL:
            //                       'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
            //                   name: 'Mr.shankar',
            //                 ),
            //                 TimeTableItem(
            //                   timetext1: '3:40 PM',
            //                   timetext2: '4:30 PM',
            //                   subtext: 'Hindi',
            //                   imageURL:
            //                       'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
            //                   name: 'Ms.Joshna',
            //                 ),
            //                 TimeTableItem(
            //                   timetext1: '2:35 PM',
            //                   timetext2: '3:30 PM',
            //                   subtext: 'P.T',
            //                   imageURL:
            //                       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyIkWCF_2NnTM-imjWtFuzsPEWFYYH-Vk76A&usqp=CAU',
            //                   name: 'Mr.Sitapathi',
            //                 ),
            //
            //
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 50.0,
            width: 65.0,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: ListView(
//         children: [
//           Card(
//             margin: EdgeInsets.only(left: 70, right: 20),
//             elevation: 8,
//             color: Colors.lightBlue[100],
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Container(
//               height: 100,
//               width: 100,
//               child: Column(
//                 children: [
//                   Text(
//                     'Maths',
//                     style: TextStyle(
//                       fontSize: 20,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Row(
//                     // mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(width: 10),
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(30),
//                         child: Image.asset(
//                           height: 50,
//                           width: 50,
//                           'assets/girl.jpg',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(width: 20),
//                       Text(
//                         'Mr.x',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                           fontSize: 20,
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
// import 'package:flutter/material.dart';
// class TimeTable extends StatefulWidget {
//   const TimeTable({super.key});

//   @override
//   State<TimeTable> createState() => _TimeTableState();
// }

// class _TimeTableState extends State<TimeTable> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
// import 'package:flutter/material.dart';
// //import 'package:web_dashboard_app_tut/screens/addtimetabel.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:image_network/image_network.dart';
// // import 'package:cached_network_image/cached_network_image.dart';
// class TimetableScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios_new),
//             onPressed: () {
//               // Define the action to be performed when the arrow icon is pressed
//               // For example, you can navigate to the previous screen
//               Navigator.pop(context);
//             },
//           ),
//           backgroundColor: Color(0xff0066C6),
//           title: Text('Timetable'),
//           centerTitle: true,
//         ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
       
//           SizedBox(
//            height: 600,
//             child: Expanded(
//               child: StreamBuilder<QuerySnapshot>(
//                 stream: FirebaseFirestore.instance.collection('Timetable').snapshots(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasError) {
//                     return Center(child: Text('Error: ${snapshot.error}'));
//                   }
          
//                   if (!snapshot.hasData) {
//                     return Center(child: Text('No Data Available'));
//                   }
          
//                   // Extract the documents from the snapshot
//                   final documents = snapshot.data!.docs;
          
//                   return ListView.builder(
//                     scrollDirection: Axis.vertical,
//                     padding: EdgeInsets.symmetric(horizontal: 10.0),
//                     itemCount: documents.length,
//                     itemBuilder: (context, index) {
//                       // Extract the document data
//                       final data = documents[index].data() as Map<String, dynamic>;
//                       final className = documents[index].id;
//                       final section = data['section'];
//                       final imageUrl = data[className.substring(2)]['imageUrl'];
                  
//                       return TimetableCard(
//                         image: imageUrl,
//                         text: '$className',
//                       );
//                     },
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }


// }

// class TimetableCard extends StatelessWidget {
//   final String? image; // Make the image field nullable
//   final String text;

//   const TimetableCard({
//     this.image, // Allow the image to be nullable
//     required this.text,
//     Key? key, 
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 320,
//       height: 250,
//       child: Card(
//         child: Column(
//           children: [
          
//             if (image != null)
//              // Only show the image if it's not null
//               Image.network(
//                 image!,
//               //  imageCache: CachedNetworkImageProvider(image),
//                 height: 200.0,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
              
//              child:   Text(
//                     "   " +text,
//                       //textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
                 
                   
                      
                          
//                         // ElevatedButton(
//                         //   onPressed: onAddImage,
//                         //   style: ButtonStyle(
//                         //     backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
//                         //   ),
//                         //   child: Icon(Icons.add_a_photo),
//                         // ),
                 
              
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


