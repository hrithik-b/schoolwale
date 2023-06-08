import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Models/marks_converter.dart';
import '../widgets/result_widgets/exam_result_bar.dart';
import '../widgets/result_widgets/marks_table.dart';

class MarksCard extends StatelessWidget {
  final String testName;
  const MarksCard({super.key, required this.testName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
        ),
        body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection(testName)
              .doc('20230001')
              .get(),
          builder: (context, snapshot) {
            if (snapshot.hasError ||
                snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            final data = snapshot.data!.data();
            final marks_data_item = MarksConverter.fromJson(data!);

            return MarkscardItem(
              marks_data: marks_data_item,
            );
          },
        ));
  }
}

class MarkscardItem extends StatelessWidget {
  final MarksConverter marks_data;
  const MarkscardItem({Key? key, required this.marks_data}) : super(key: key);
  static int examsPassed(Map map, int pass_mark) {
    int count = 0;
    map.forEach((key, value) {
      if (value >= pass_mark) {
        count++;
      }
    });

    return count;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> marksItemsList = [];
    marksItemsList.add(
      ResultBar(
        passedExams: examsPassed(marks_data.map, marks_data.passingMarks),
        totalExams: marks_data.map.length,
      ),
    );

    marks_data.map.forEach((key, value) {
      marksItemsList.add(
        MarksTable(
            subjectName: key,
            marksObtained: value,
            totalMarks: marks_data.totalMarks,
            passingMarks: marks_data.passingMarks),
      );
    });

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: marksItemsList,
      ),
    );
  }
}
