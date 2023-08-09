// // import 'package:flutter/material.dart';
// // import 'package:schoolwale/pages/resultpage.dart';
// //
// // import 'annoucement_page.dart';
// // import 'homepage.dart';
// //
// //
// // void main() {
// //   runApp(Myprofile());
// // }
// //
// // class Myprofile extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         appBar: AppBar(
// //
// //           // leading: IconButton(
// //           //   icon: Icon(Icons.arrow_back_ios_new),
// //           //   onPressed: () {
// //           //     // Define the action to be performed when the arrow icon is pressed
// //           //     // For example, you can navigate to the previous screen
// //           //     Navigator.pop(context);
// //           //   },
// //           // ),
// //            backgroundColor: Color(0xff0066C6),
// //           title: Text('Student Profile'),
// //           centerTitle: true,
// //         ),
// //         body:SingleChildScrollView(
// //          scrollDirection: Axis.vertical,
// //          child: SizedBox(
// //              child: Card(
// //            child: Expanded(
// //              child: Container(
// //               // height:((MediaQuery.of(context).size.height)/10)*3,
// //               // width:((MediaQuery.of(context).size.width)/10)*7,
// //                height:750,
// //                width: 550,
// //                child: Column(
// //
// //               children: [
// //               CircleAvatar(
// //                 radius: 50,
// //                 backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxuNUs9ZDQxIa3CDazSLsA3qpoL690zMGeZo1aruEoDg&usqp=CAU&ec=48665701'),
// //               ),
// //
// //               SizedBox(height: 16),
// //               Text('Chintu Rao'),
// //               SizedBox(height: 8),
// //               Text(' IX'),
// //               SizedBox(height: 8),
// //               Text('2117026'),
// //               SizedBox(height: 16),
// //               Card(
// //
// //                 elevation: 8,
// //                 shape: RoundedRectangleBorder(
// //                  borderRadius: BorderRadius.circular(20),
// //                  ),
// //                 margin: EdgeInsets.all(8),
// //                 color: Colors.lightBlue[50],
// //                 child: Column(
// //                   children: [
// //                     ListTile(
// //                       leading: Icon(Icons.school,
// //                         color: Colors.blue,
// //                       ),
// //                       title: Text('School Name'),
// //                       subtitle: Text('Vishwamangala High School Mangaluru'),
// //                     ),
// //                     ListTile(
// //                       leading: Icon(Icons.boy,
// //                         color: Colors.blue,
// //                       ),
// //                       title: Text('Gender'),
// //                       subtitle: Text('Male'),
// //                     ),
// //                     ListTile(
// //                       leading: Icon(Icons.cake_outlined,
// //                         color: Colors.blue,
// //                       ),
// //                       title: Text('Date of Birth'),
// //                       subtitle: Text('29-09-2017'),
// //                     ),
// //                     ListTile(
// //                       leading: Icon(Icons.person,
// //                         color: Colors.blue,
// //                       ),
// //                       title: Text('Fathers Name'),
// //                       subtitle: Text('lakshmana Rao'),
// //
// //                     ),
// //                     ListTile(
// //                       leading: Icon(Icons.girl,
// //                         color: Colors.blue,
// //                       ),
// //                       title: Text('Mothers Name'),
// //                       subtitle: Text('seetha Rai'),
// //                     ),
// //                     ListTile(
// //                       leading: Icon(Icons.phone,
// //                         color: Colors.blue,
// //                       ),
// //                       title: Text('Phone No'),
// //                       subtitle: Text('9591205429'),
// //                     ),
// //                     ListTile(
// //                       leading: Icon(Icons.location_city_outlined,
// //                         color: Colors.blue,
// //                       ),
// //                       title: Text('Address'),
// //                       subtitle: Text('Armady House,kairangala post,Bantwal taluk'),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //       )
// //       )
// //       ),
// //       )
// //     );
// //
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Profile"),
//       ),
//       body: FutureBuilder(
//         future: FirebaseFirestore.instance.collection("Newstudent").doc('20230001').get(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError || snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           final data = snapshot.data!.data();
//           final profileData = ProfileConverter.fromJson(data!);
//
//           return ProfilePageContent(profileData: profileData);
//         },
//       ),
//     );
//   }
// }
//
// class ProfilePageContent extends StatelessWidget {
//   final ProfileConverter profileData;
//
//   const ProfilePageContent({Key? key, required this.profileData}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: SizedBox(
//         child: Card(
//           child: Container(
//             height: 750,
//             width: 550,
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 50,
//                   backgroundImage: NetworkImage(profileData.profileImageUrl),
//                 ),
//                 SizedBox(height: 16),
//                 Text(profileData.name),
//                 SizedBox(height: 8),
//                 Text(profileData.grade),
//                 SizedBox(height: 8),
//                 Text(profileData.rollNumber),
//                 SizedBox(height: 16),
//                 Card(
//                   elevation: 8,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   margin: EdgeInsets.all(8),
//                   color: Colors.lightBlue[50],
//                   child: Column(
//                     children: [
//                       ListTile(
//                         leading: Icon(
//                           Icons.school,
//                           color: Colors.blue,
//                         ),
//                         title: Text('School Name'),
//                         subtitle: Text(profileData.schoolName),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.boy,
//                           color: Colors.blue,
//                         ),
//                         title: Text('Gender'),
//                         subtitle: Text(profileData.gender),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.cake_outlined,
//                           color: Colors.blue,
//                         ),
//                         title: Text('Date of Birth'),
//                         subtitle: Text(profileData.dateOfBirth),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.person,
//                           color: Colors.blue,
//                         ),
//                         title: Text('Fathers Name'),
//                         subtitle: Text(profileData.fathersName),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.girl,
//                           color: Colors.blue,
//                         ),
//                         title: Text('Mothers Name'),
//                         subtitle: Text(profileData.mothersName),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.phone,
//                           color: Colors.blue,
//                         ),
//                         title: Text('Phone No'),
//                         subtitle: Text(profileData.phoneNo ),
//                       ),
//                       ListTile(
//                         leading: Icon(
//                           Icons.location_city_outlined,
//                           color: Colors.blue,
//                         ),
//                         title: Text('Address'),
//                         subtitle: Text(profileData.address),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileConverter {
//   final String profileImageUrl;
//   final String name;
//   final String grade;
//   final String rollNumber;
//   final String schoolName;
//   final String gender;
//   final String dateOfBirth;
//   final String fathersName;
//   final String mothersName;
//   final String phoneNo;
//   final String address;
//
//   ProfileConverter({
//     required this.profileImageUrl,
//     required this.name,
//     required this.grade,
//     required this.rollNumber,
//     required this.schoolName,
//     required this.gender,
//     required this.dateOfBirth,
//     required this.fathersName,
//     required this.mothersName,
//     required this.phoneNo,
//     required this.address,
//   });
//
//   ProfileConverter.fromJson(Map<String, dynamic> json)
//       : profileImageUrl = json['profileImageUrl'],
//         name = json['FullName'],
//         grade = json['Class'],
//         rollNumber = json['RegisterNo'],
//         schoolName = json['SchoolName'],
//         gender = json['Gender'],
//         dateOfBirth = json['DOB'],
//         fathersName = json['FathersName'],
//         mothersName = json['MothersName'],
//         phoneNo = json['Registered_number'],
//         address = json['Address'];
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Models/profilepage_converter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color(0xff0066C6),
      ),
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: FirebaseFirestore.instance
            .collection("Students")
            .doc('20230001')
            .get(),
        builder: (context, snapshot) {
          if (snapshot.hasError ||
              snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData || snapshot.data == null) {
            return Text("No data available");
          }

          final data = snapshot.data!.data();
          if (data == null) {
            return Text("No data available");
          }

          final profileData = ProfileConverter.fromJson(data);
          print(data);

          return ProfilePageContent(profileData: profileData);

        },
      ),
    );
  }
}

class ProfilePageContent extends StatelessWidget {
  final ProfileConverter profileData;

  const ProfilePageContent({Key? key, required this.profileData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String studentclass;
    print(profileData.profileImageUrl);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        child: Card(
          child: Container(
            padding: EdgeInsets.only(top: 20),
            height: 750,
            width: 550,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage(profileData.profileImageUrl.toString()),
                ),
                SizedBox(height: 16),
                Text(profileData.name ?? ''),
                SizedBox(height: 8),
                Text(profileData.grade! + profileData.section.toString() ?? ''),
                SizedBox(height: 8),
                Text(profileData.rollNumber != null
                    ? profileData.rollNumber.toString()
                    : ''),
                SizedBox(height: 16),
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.all(8),
                  color: Colors.lightBlue[50],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.school,
                          color: Colors.blue,
                        ),
                        title: Text('School Name'),
                        subtitle: Text(profileData.schoolName ?? ''),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.boy,
                          color: Colors.blue,
                        ),
                        title: Text('Gender'),
                        subtitle: Text(profileData.gender ?? ''),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.cake_outlined,
                          color: Colors.blue,
                        ),
                        title: Text('Date of Birth'),
                        subtitle: Text(profileData.dateOfBirth ?? ''),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        title: Text('Fathers Name'),
                        subtitle: Text(profileData.fathersName ?? ''),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.girl,
                          color: Colors.blue,
                        ),
                        title: Text('Mothers Name'),
                        subtitle: Text(profileData.mothersName ?? ''),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        title: Text('Phone No'),
                        subtitle: Text(profileData.phoneNo != null
                            ? profileData.phoneNo.toString()
                            : ''),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.location_city_outlined,
                          color: Colors.blue,
                        ),
                        title: Text('Address'),
                        subtitle: Text(profileData.address ?? ''),
                      ),
                    ],
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
