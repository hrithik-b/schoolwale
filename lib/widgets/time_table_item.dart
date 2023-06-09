import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class TimeTableItem extends StatelessWidget {
  final String timetext1;
  final String timetext2;
  final String subtext;
  final String imageURL;
  final String name;
  const TimeTableItem(
      {super.key,
      required this.timetext1,
      required this.timetext2,
      required this.subtext,
      required this.imageURL,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height) / 10 * 1.4,
            width: (MediaQuery.of(context).size.width) / 10 * 2,
            // color: Colors.white,
            child: Column(children: [
              Text(
                timetext1,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 78, 45, 45)),
              ),
              SizedBox(height: 55),
              Text(
                timetext2,
                // textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 78, 45, 45)),
              ),
            ]),
          ),
          SizedBox(width: 5),
          Card(
            // margin: EdgeInsets.only(top: 20),
            elevation: 8,

            color: Colors.lightBlue[100],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              height: (MediaQuery.of(context).size.height) / 10 * 1.4,
              width: (MediaQuery.of(context).size.width) / 10 * 7.5,
              child: Column(
                children: [
                  Text(
                    subtext,
                    style: TextStyle(
                      fontSize: 20,
                      // textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          height: 50,
                          width: 50,
                          imageURL,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
