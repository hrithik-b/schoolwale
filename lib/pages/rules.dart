
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyRules extends StatelessWidget {
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
          "Rules And Regulations",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance.collection("rules").get(),
        builder: (context, snapshot) {
          if (snapshot.hasError || snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final data = snapshot.data!.docs;
          final ruleItems = data.map((doc) => RuleItem.fromJson(doc.data() as Map<String, dynamic>)).toList();
          return ListView.builder(
            itemCount: ruleItems.length,
            itemBuilder: (context, index) {
              final rule = ruleItems[index];
              return RuleItemWidget(
                title: rule.title,
                description: rule.description,
              );
            },
          );
        },
      ),
    );
  }
}

class RuleItem {
  final String title;
  final String description; // Change the type to String

  RuleItem({
    required this.title,
    required this.description,
  });

  factory RuleItem.fromJson(Map<String, dynamic> json) {
    return RuleItem(
      title: json['title'] as String,
      description: json['description'] as String, // Change the type to String
    );
  }
}

class RuleItemWidget extends StatelessWidget {
  final String title;
  final String description; // Change the type to String

  const RuleItemWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(221, 215, 245, 0.302),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xffDDDDDD),
              blurRadius: 6.0,
              spreadRadius: 6.0,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                description, // Display the description as a single string
                style: TextStyle(
                  fontSize: 18,
                  wordSpacing: 3,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyRules(),
  ));
}
