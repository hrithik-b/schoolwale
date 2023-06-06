import 'package:flutter/material.dart';

import '../widgets/result_widgets/exam_result_bar.dart';
import '../widgets/result_widgets/marks_table.dart';

class MarksCard extends StatelessWidget {
  const MarksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar(
         backgroundColor: Color(0xff0066C6),
         title: Text(""),
       ),
           body: SingleChildScrollView(
             
             scrollDirection: Axis.vertical,
             child: Column(
              children:[
                const ResultBar(passedExams: 4,totalExams: 6,),
                MarksTable(subjectName: "Mathematics", marksObtained: 19, totalMarks: 20, passingMarks: 8),
                MarksTable(subjectName: "English", marksObtained: 17, totalMarks: 20, passingMarks: 8),
                MarksTable(subjectName: "Kannada", marksObtained: 16, totalMarks: 20, passingMarks: 8),
                MarksTable(subjectName: "Science", marksObtained: 6, totalMarks: 20, passingMarks: 8),
                MarksTable(subjectName: "Social Science", marksObtained: 0, totalMarks: 20, passingMarks: 8),                
                MarksTable(subjectName: "Hindi", marksObtained: 19, totalMarks: 20, passingMarks: 8),




              ] 
              
             ),
           )
    );
  }
}