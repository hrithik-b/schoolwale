

import 'package:flutter/material.dart';
import 'package:schoolwale/widgets/teacher_items.dart';

class TeacherWidget extends StatelessWidget {
  const TeacherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 30,bottom: 20,left: 20),
      child: Column(children:  [
       Row(
         children:[
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text("Teachers",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
          ),
          Container(
            margin: const EdgeInsets.only(left: 240,bottom: 20),
            child: const Text("See All", style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),

        
         ] 
       ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              
              TeacherItem(teacherName: "Mr.Harshini",teachingSubject: "English",teacherImageUrl:"assets/images/teacher-image.jpeg" ,),
               TeacherItem(teacherName: "Ms.Joylin",teachingSubject: "Kannada",teacherImageUrl: "assets/images/teacher-image.jpeg",),
               TeacherItem(teacherName: "Mr.Jevian",teachingSubject: "P.T.",teacherImageUrl: "assets/images/teacher-image.jpeg",),
               TeacherItem(teacherName: "Ms.Namitha", teachingSubject: "Science", teacherImageUrl: "assets/images/teacher-image.jpeg")
            ],
          ),
            
          
        )
        
      ]),
    );
  }
}