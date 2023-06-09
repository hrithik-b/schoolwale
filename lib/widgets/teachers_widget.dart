

import 'package:flutter/material.dart';
import 'package:schoolwale/pages/teacher.dart';
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
            margin: const EdgeInsets.only(left: 210,bottom: 20),
              child: GestureDetector(
                child: Text("See All" ,style: TextStyle(
               fontWeight: FontWeight.bold,
               ),),

                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Teacherstate()),
                  );
                },
              )
            // child: const Text("See All", style: TextStyle(
            //   fontWeight: FontWeight.bold,
            // ),),

          ),

        
         ] 
       ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              
              TeacherItem(teacherName: "Ms.Harshini",teachingSubject: "English",teacherImageUrl:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8d29tYW4lMjBwcm9maWxlfGVufDB8fDB8fHww&w=1000&q=80' ,),
               TeacherItem(teacherName: "Ms.Joylin",teachingSubject: "Kannada",teacherImageUrl: 'https://media.istockphoto.com/id/1300972573/photo/pleasant-young-indian-woman-freelancer-consult-client-via-video-call.jpg?s=612x612&w=0&k=20&c=cbjgWR58DgUUETP6a0kpeiKTCxwJydyvXZXPeNTEOxg=',),
               TeacherItem(teacherName: "Mr.Jevian",teachingSubject: "P.T.",teacherImageUrl: 'https://iimk.ac.in/uploads/admission_application/medium/PhD(PT)_04_03_M.jpg',),
               TeacherItem(teacherName: "Ms.Namitha", teachingSubject: "Science", teacherImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6tpRoxIPAY3A-ZbjTUdX0bXRZ3h_W9iwJ0w&usqp=CAU')
            ],
          ),
            
          
        )
        
      ]),
    );
  }
}