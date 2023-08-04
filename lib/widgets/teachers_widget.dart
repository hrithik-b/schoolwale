import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:schoolwale/pages/teacher.dart';
import 'package:schoolwale/widgets/teacher_items.dart';

class TeacherWidget extends StatelessWidget {
  const TeacherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 20, left: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  "Teachers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 210, bottom: 20),
                child: GestureDetector(
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teacherstate()),
                    );
                  },
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
              stream: FirebaseFirestore.instance.collection('Teachers').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError || !snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final documents = snapshot.data!.docs;
                return Row(
                  children: documents.map((doc) {
                    final teacherData = doc.data();
                    return TeacherItem(
                      teacherName: teacherData['name'] ?? '',
                      teachingSubject: teacherData['subject'] ?? '',
                      teacherImageUrl: teacherData['imageUrl'] ?? '',
                      qualification:teacherData['qualification']??'',


                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
