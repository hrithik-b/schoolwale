
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
      ),
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: FirebaseFirestore.instance.collection("Students").doc('20230001').get(),
        builder: (context, snapshot) {
          if (snapshot.hasError || snapshot.connectionState == ConnectionState.waiting) {
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

          return ProfilePageContent(profileData: profileData);
        },
      ),
    );
  }
}

class ProfilePageContent extends StatelessWidget {
  final ProfileConverter profileData;

  const ProfilePageContent({Key? key, required this.profileData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        child: Card(
          child: Container(
            height: 750,
            width: 550,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(profileData.profileImageUrl),
                ),
                SizedBox(height: 16),
                Text(profileData.name ?? ''),
                SizedBox(height: 8),
                Text(profileData.grade ?? ''),
                SizedBox(height: 8),
                Text(profileData.rollNumber ?? ''),
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
                        subtitle: Text(profileData.phoneNo ?? ''),
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

