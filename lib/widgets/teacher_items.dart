import 'package:flutter/material.dart';

class TeacherItem extends StatelessWidget {
  final String teacherName;
    final String teachingSubject;
    final String teacherImageUrl;
  const TeacherItem({super.key, required this.teacherName, required this.teachingSubject, required this.teacherImageUrl});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      //alignment: Alignment.center,
      margin: EdgeInsets.only(right: 20),
      child: Stack(
        
        children: [
          
          Container(
            
            width: 140,
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 90, 255, 225)
            ),
          ),
          Container(
            width: 140,
            height: 30,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255)
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5,left: 40),
                width: 60,
                height: 60,
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                image:  DecorationImage(
                image:NetworkImage(teacherImageUrl),
                fit: BoxFit.cover,
                
            ),
            ),
              ),
              
              Container(
                  
                  //alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 75,left: 23),
                  
                  child:  Text(teacherName,style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    
                    
                  ),
                  ),
                ),
              
              Container(
                margin: EdgeInsets.only(top: 95,left: 40),
                child:  Text(teachingSubject,style: TextStyle(
                  fontSize: 17,
                  
                  
                ),
                ),
                
              ),
              Container(
                margin: EdgeInsets.only(top: 140,left: 25),
                child:  Text("Call now",style: TextStyle(
                  fontSize: 13,
                  
                  
                ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 135,left: 80),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/icons/phone-call.png')
                  )
                ),
              )

              
          
      ]),
    );
  }
}