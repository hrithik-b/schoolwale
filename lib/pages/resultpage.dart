import 'package:flutter/material.dart';
import 'package:schoolwale/pages/profilepage.dart';

import 'package:schoolwale/widgets/result_widgets/mid_final_exam.dart';

import '../widgets/result_widgets/classtest_internal_widget.dart';
import 'annoucement_page.dart';
import 'homepage.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
       appBar: AppBar(
         backgroundColor: Color(0xff0066C6),
         title: Text("Results"),
       ),
           body: SingleChildScrollView(
             
             scrollDirection: Axis.vertical,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: const [
                 TestMarksWidget(testNameMain: 'Class Tests',testNameSub1:'FA 1',testNameSub2:'FA 2' ,),
                 TestMarksWidget(testNameMain: 'Internal Exams',testNameSub1:'Internal 1',testNameSub2:'Internal 2' ,),
                 MajorExamWidget(ExamName: 'Mid Term'),
                 MajorExamWidget(ExamName: "Final Exams")
               ],
             ),
           ),
      bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            IconButton(

              icon: Icon(Icons.home_outlined,
                size: 30.0,
                color: Colors.blue[700]!,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MyHomePage()),

                );
              },


            ),
            IconButton(
              icon: Icon(Icons.campaign_outlined,size: 30.0,color:Colors.blue[700]!),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  annoucement()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.menu_book_outlined,size: 30.0,color: Colors.blue[700]!),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage()),
                );
                // Home action
              },
            ),
            IconButton(
              icon: Icon(Icons.person_outline,size: 30.0,color: Colors.blue[700]!),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myprofile()),
                );
              },
            ),
            // selectedItemColor: Colors.blue,
            // unselectedItemColor: Colors.grey,
          ],
          //  currentIndex:0,
          //  selectedItemColor:Colors.blue,
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