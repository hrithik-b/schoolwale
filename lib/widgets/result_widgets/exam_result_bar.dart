import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:schoolwale/constants/constant_fields.dart';


class ResultBar extends StatelessWidget {
  final int passedExams;
  final int totalExams;
  
  const ResultBar({super.key, required this.passedExams, required this.totalExams});

  @override
  Widget build(BuildContext context) {
    double passingPercentage= (passedExams.toDouble())/(totalExams.toDouble());
    String passingPercentageValue = (passingPercentage*100).toStringAsFixed(2);
    return Container(
      margin: EdgeInsets.only(top:20,left:20),
      child: Stack(
        children: [
          Container(
            width:360 ,
            height: 100,
            color: primaryColor,
          ),
          Container(
            margin: EdgeInsets.only(top: 20,left: 20,bottom: 50),
            height: 80,
            width: 200,
            child: Text("    $passedExams/$totalExams\nExams Passed",style: TextStyle(
              fontSize: 25,
              fontWeight:FontWeight.bold,
              
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,left: 250),
            child: CircularPercentIndicator(
                  radius: 30.0,
                  lineWidth: 8.0,
                  animation: true,
                  percent: passingPercentage,
                  center:   Text(
                    "$passingPercentageValue%",
                    style:
                         TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
                  ),
                  
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color.fromARGB(255, 4, 255, 0),
                ),
          ),
          
        ],
      ),
    );;
  }
}