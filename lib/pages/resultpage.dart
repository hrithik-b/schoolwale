import 'package:flutter/material.dart';

import 'package:schoolwale/widgets/result_widgets/mid_final_exam.dart';

import '../widgets/result_widgets/classtest_internal_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
       appBar: AppBar(
         title: Text("Results"),
       ),
           body: SingleChildScrollView(
             
             scrollDirection: Axis.vertical,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 TestMarksWidget(testNameMain: 'Class Tests',testNameSub1:'FA 1',testNameSub2:'FA 2' ,),
                 TestMarksWidget(testNameMain: 'Internal Exams',testNameSub1:'Internal 1',testNameSub2:'Internal 2' ,),
                 MajorExamWidget(ExamName: 'Mid Term')
               ],
             ),
           ),
    );
  }}


  // Scaffold(
  //     appBar: AppBar(
  //       title: Text("Circular Percent Indicators"),
  //     ),
  //         body: Center(
  //       child: ListView(
  //           children: <Widget>[
               
              
  //              CircularPercentIndicator(
  //               radius: 30.0,
  //               lineWidth: 8.0,
  //               animation: true,
  //               percent: 0.83,
  //               center:  const Text(
  //                 "4/5",
  //                 style:
  //                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
  //               ),
                
  //               circularStrokeCap: CircularStrokeCap.round,
  //               progressColor: Colors.purple,
  //             ),
              
  //                 ],
  //               ),
  //             )
  //           );