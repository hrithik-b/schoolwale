import 'package:flutter/material.dart';
import 'package:schoolwale/constants/constant_fields.dart';

import '../../pages/markscard.dart';

class TestMarksWidget extends StatelessWidget {
  final String testNameMain;

  const TestMarksWidget({
    super.key,
    required this.testNameMain,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Material(
        // color: const Color.fromARGB(253, 182, 182, 182),
        color: primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MarksCard(testName: testNameMain)),
            );
          },
          child: Stack(
            children: [
              Container(
                width: 360,
                height: 80,
                child: Center(
                  child: Text(
                    testNameMain,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              // Row(
              //   children: [
              //     Container(
              //       margin: const EdgeInsets.only(top: 70, left: 15),
              //       width: 100,
              //       height: 40,
              //       child: ElevatedButton(
              //         onPressed: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) =>
              //                     MarksCard(testName: testNameMain)),
              //           );
              //         },
              //         style: ElevatedButton.styleFrom(
              //             elevation: 12.0,
              //             textStyle: const TextStyle(color: Colors.white)),
              //         child: Text(testNameSub1),
              //       ),
              //     ),
              //     Container(
              //       margin: const EdgeInsets.only(top: 70, left: 115),
              //       width: 100,
              //       height: 40,
              //       child: ElevatedButton(
              //         onPressed: () {},
              //         style: ElevatedButton.styleFrom(
              //             elevation: 12.0,
              //             textStyle: const TextStyle(color: Colors.white)),
              //         child: Text(testNameSub2),
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
