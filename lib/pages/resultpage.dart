import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../constants/constant_fields.dart';
import '../widgets/result_widgets/classtest_internal_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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
          centerTitle: true,
          backgroundColor: primaryColor,
          title: const Text('Results'),
        ),
        body: FutureBuilder(
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
            final data = snapshot.data!.data();
            final exams = (data?['Completed_exams']) as List;
            //print(exams);
            return ResultPageContent(
              exams_data: exams,
            );
          },
        ));
  }
}

class ResultPageContent extends StatelessWidget {
  final List exams_data;
  const ResultPageContent({Key? key, required this.exams_data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int count = exams_data.length;

    List<Widget> mywidgets = [];
    for (int x = 0; x < count; x++) {
      mywidgets.add(
        TestMarksWidget(
          testNameMain: exams_data[x],
        ),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: mywidgets,

        // MajorExamWidget(ExamName: 'Mid Term'),
        // MajorExamWidget(ExamName: "Final Exams")
      ),
    );
  }
}
