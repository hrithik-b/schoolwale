import 'package:flutter/material.dart';


class MajorExamWidget extends StatelessWidget {
  final String ExamName;
  

  const MajorExamWidget({super.key,  required this.ExamName});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => {/*Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ResultPage()),
  )*/},
            child: Container(
              width: 360,
              height: 120,
              color:  Color.fromARGB(253, 228, 228, 228),
            ),
          ),
          Container(
            width: 200,
            height: 50,
            color:const Color.fromARGB(253, 228, 228, 228),
            child:   Padding(
              padding: const EdgeInsets.only(top: 25,left: 15),
              child: Text(ExamName, style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 70,left: 15),
            width: 100,
            height: 40,
            child: ElevatedButton(
                  onPressed: () {},
                  
                  style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child:  Text(ExamName),
                ),
            
          ),
          
        ],
      ),
      
    );
  }
}