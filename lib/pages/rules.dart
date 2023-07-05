import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Myrules extends StatelessWidget {
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
        future: FirebaseFirestore.instance.collection("Rules").get(),
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
  final Map<String, dynamic> description;

  RuleItem({
    required this.title,
    required this.description,
  });

  factory RuleItem.fromJson(Map<String, dynamic> json) {
    return RuleItem(
      title: json['Title'] as String,
      description: json['Description'] as Map<String, dynamic>,
    );
  }
}

class RuleItemWidget extends StatelessWidget {
  final String title;
  final Map<String, dynamic> description;

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
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: description.entries.map((entry) {
                  return Text(
                    '${entry.value}',
                    style: TextStyle(
                      fontSize: 18,
                      wordSpacing: 3,
                      letterSpacing: 1,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}