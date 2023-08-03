
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../widgets/aboutContainer.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0660C6),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "About",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("About").get(),
        builder: (context, snapshot) {
          if (snapshot.hasError || snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data!.docs;
          final aboutItems = data.map((doc) => doc.data()).toList();
          return AboutPageContent(aboutItems: aboutItems);
        },
      ),
    );
  }
}

class AboutPageContent extends StatelessWidget {
  final List<Map<String, dynamic>> aboutItems;

  const AboutPageContent({Key? key, required this.aboutItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: aboutItems.length,
      itemBuilder: (context, index) {
        final item = aboutItems[index];
        return AboutContainer(
          Schoolname: item['schoolName'],
          imageUrl: item['imageUrl'],
          description:item ['description'],
          mission: item['mission'],



        );
      },
    );
  }
}
