import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Virtual Id card',
//       home: Virtualid(),
//     );
//   }
// }

class Virtualid extends StatefulWidget {
  @override
  _Virtualid createState() => _Virtualid();
}

class _Virtualid extends State<Virtualid> {
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
          title: Text('Virtual Id Card'),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection("Students")
              .doc('20230001')
              .get(),
          builder: (context, snapshot) {
            if (snapshot.hasError ||
                snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            final data = snapshot.data!.data();
            final imageUrl = (data?['virtualIdUrl']) as String;
            //print(exams);
            return ListView(
              children: [
                Card(
                  child: Column(
                    children: [
                      Container(
                        height: ((MediaQuery.of(context).size.height) / 10) * 7,
                        width: ((MediaQuery.of(context).size.width) / 10) * 10,
// width:350,
// height:550,
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
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
        ));
  }
}
