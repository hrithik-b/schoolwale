import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:schoolwale/pages/homepage.dart';
//import 'package:schoolwale/pages/homepage.dart';
import 'package:schoolwale/pages/phone.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SchoolWale',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyHomePage(),
      // home: FutureBuilder(
      //   future:
      //     FirebaseFirestore.instance.collection("ClassTest1").doc('20230001').get(),
      //   builder: (context,snapshot){
      //     if(snapshot.hasError ||
      //         snapshot.connectionState == ConnectionState.waiting){
      //           return Text("Loading");
      //         }
      //     final data = snapshot.data!.data();
      //     print(data);
      //     return const MyHomePage();
      //   }
      //   ,
      // ),
    );
  }
}
