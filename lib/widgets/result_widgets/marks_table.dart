import 'package:flutter/material.dart';

class MarksTable extends StatelessWidget {
  final String subjectName;
  final int marksObtained;
  final int totalMarks;
  final int passingMarks;
  const MarksTable(
      {super.key,
      required this.subjectName,
      required this.marksObtained,
      required this.totalMarks,
      required this.passingMarks});
  static String result = "";
  static Color getColor(
      int marksObtained, int passingMarks, markscardBGSecond, String result) {
    if (marksObtained >= passingMarks) {
      markscardBGSecond = Color.fromARGB(255, 182, 255, 166);

      return Color.fromARGB(255, 160, 255, 142);
    }

    markscardBGSecond = Color.fromARGB(255, 255, 101, 101);
    return Color.fromARGB(255, 255, 141, 141);
  }

  static String getResult(int marksObtained, int passingMarks) {
    if (marksObtained >= passingMarks) {
      return "P";
    }
    return "F";
  }

  @override
  Widget build(BuildContext context) {
    var markscardBGSecond;
    var result = getResult(marksObtained, passingMarks);
    Color markscardBG =
        getColor(marksObtained, passingMarks, markscardBGSecond, result);

    return Container(
        margin: EdgeInsets.only(left: 10),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: markscardBG,
              border: Border(
                bottom: BorderSide(
                    width: .5, color: Color.fromARGB(255, 56, 56, 56)),
              ),
            ),
            width: (MediaQuery.of(context).size.width) / 10 * 9.6,
            height: 60,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              subjectName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 200),
            child: Text(
              marksObtained.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 260),
            child: Text(
              totalMarks.toString(),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: markscardBGSecond,
                border: Border.all(color: Colors.black, width: 0.5)),
            margin: EdgeInsets.only(top: 14, left: 310),
          ),
          Container(
            margin: EdgeInsets.only(top: 22, left: 310),
            child: Center(
              child: Text(
                result,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ]));
  }
}
