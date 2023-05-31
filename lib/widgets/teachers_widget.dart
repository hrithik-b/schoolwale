

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
              
              TeacherItem(teacherName: "Mr.Harshini",teachingSubject: "English",teacherImageUrl:"https://t3.ftcdn.net/jpg/02/65/18/30/360_F_265183061_NkulfPZgRxbNg3rvYSNGGwi0iD7qbmOp.jpg" ,),
              // TeacherItem(teacherName: "Ms.Joylin",teachingSubject: "Kannada",teacherImageUrl: "assets/images/layout-1.png",),
              // TeacherItem(teacherName: "Mr.Jevian",teachingSubject: "P.T.",teacherImageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDMbe3YGROlyQu3hq8yz9nRougatDrkabrsw&usqp=CAU",),
              // TeacherItem(teacherName: "Ms.Namitha", teachingSubject: "Science", teacherImageUrl: "https://media.licdn.com/dms/image/C4D03AQFdpPF8w92yYw/profile-displayphoto-shrink_800_800/0/1659168543950?e=2147483647&v=beta&t=79RJeliSfLBFqbwrhIwm7quxRPm5-6AeRRCLS_zdG_w")
            ],
          ),
            
          
        )
        
      ]),
    );
  }
}