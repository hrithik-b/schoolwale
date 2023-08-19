import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:photo_view/photo_view.dart';

class Virtualid extends StatefulWidget {
  @override
  _Virtualid createState() => _Virtualid();
}

class _Virtualid extends State<Virtualid> {
  final user = FirebaseAuth.instance.currentUser;
  String phone = '+91';

  @override
  void initState() {
    if (user?.phoneNumber != null) {
      phone = user!.phoneNumber!.substring(3);
    }
    super.initState();
  }

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
        title: Text('Virtual Id Card'),
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: FirebaseFirestore.instance
            .collection("Students")
            .where("Registered_number", isEqualTo: phone)
            .get()
            .then((querySnapshot) => querySnapshot.docs.first),
        builder: (context, snapshot) {
          if (snapshot.hasError ||
              snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final data = snapshot.data!.data();
          final imageUrl = (data?['virtualIdUrl']) as String;

          return ListView(
            children: [
              Card(
                child: Column(
                  children: [
                    Container(
                      height: ((MediaQuery.of(context).size.height) / 10) * 7,
                      width: ((MediaQuery.of(context).size.width) / 10) * 10,
                      child: PhotoView(
                        imageProvider: NetworkImage(imageUrl),
                        minScale: PhotoViewComputedScale.contained * 0.9,
                        maxScale: PhotoViewComputedScale.covered * 8,
                        backgroundDecoration: BoxDecoration(
                          color: Colors.white, // Set the background color here
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Virtual ID Card',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
