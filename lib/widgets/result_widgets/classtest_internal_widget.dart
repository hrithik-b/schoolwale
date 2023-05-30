import 'package:flutter/material.dart';

import '../../pages/markscard.dart';
import 'exam_result_bar.dart';


class TestMarksWidget extends StatelessWidget {
  final String testNameMain;
  final String testNameSub1;
  final String testNameSub2;

  const TestMarksWidget({super.key, required this.testNameMain, required this.testNameSub1, required this.testNameSub2});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            width: 360,
            height: 120,
            color:  Color.fromARGB(253, 228, 228, 228),
          ),Container(
            width: 200,
            height: 50,
            color:const Color.fromARGB(253, 228, 228, 228),
            child:   Padding(
              padding: const EdgeInsets.only(top: 25,left: 15),
              child: Text(testNameMain, style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(top: 70,left: 15),
            width: 100,
            height: 40,
            child: ElevatedButton(
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MarksCard()),
                  );},
                  
                  style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child:  Text(testNameSub1),
                ),
            
          ),
          Container(
              margin: EdgeInsets.only(top: 70,left: 115),
            width: 100,
            height: 40,
           child: ElevatedButton(
                  onPressed: () {},
                  
                  style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      textStyle: const TextStyle(color: Colors.white)),
                  child:  Text(testNameSub2),
                ),
          ),
          ],)
        ],
      ),
      
    );
  }
}