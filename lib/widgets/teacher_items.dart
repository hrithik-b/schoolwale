import 'package:flutter/material.dart';

class TeacherItem extends StatelessWidget {
  final String teacherName;
  final String teachingSubject;
  final String teacherImageUrl;
  final String qualification;
  final String phoneNo;

  const TeacherItem({
    Key? key,
    required this.teacherName,
    required this.teachingSubject,
    required this.teacherImageUrl,
    required this.qualification,
    required this.phoneNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          Container(
            width: 140,
            height: 180,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 179, 191, 241),
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromARGB(255, 179, 191, 241),
            ),
          ),
          Container(
            width: 140,
            height: 30,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 40),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: NetworkImage(teacherImageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 10,
            right: 10,
            child: Text(
              teacherName,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 95,
            left: 10,
            right: 10,
            child: Text(
              teachingSubject,
              style: TextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            right: 10,
            child: Text(
              qualification,
              style: TextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 140,
            left: 10,
            right: 30,
            child: Text(
              "Call now",
              style: TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 135,
            left: 90,
            width: 30,
            height: 30,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icons/phone-call.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
