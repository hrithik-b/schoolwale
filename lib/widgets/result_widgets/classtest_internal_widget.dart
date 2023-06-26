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
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        width: (MediaQuery.of(context).size.width) - 40,
        height: 80,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 15,
          )
        ]),
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
                Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        testNameMain,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
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
      ),
    );
  }
}
