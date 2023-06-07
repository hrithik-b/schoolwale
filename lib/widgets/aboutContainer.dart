import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget {
    final String heading;
    final cwidth;
    final cheight;
    final String content;
  const ContainerWidget({super.key, required this.heading, this.cwidth, this.cheight, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      
              alignment: Alignment.center,
             width:cwidth,//(MediaQuery.of(context).size.width)/10*9,
             height:cheight,//((MediaQuery.of(context).size.height)/10)*5.5,
              decoration: BoxDecoration(
                boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(218, 201, 201, 1),
                  blurRadius: 6.0,
                  spreadRadius: 6.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
                color: Color.fromRGBO(221, 215, 245, 0.302),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      heading,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        wordSpacing: 3,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        content,
                        style: TextStyle(
                          fontSize: 18,
                          wordSpacing: 3,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          
    );
  }
}