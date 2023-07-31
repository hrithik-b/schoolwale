import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StackBuilder extends StatelessWidget {
  final String name;
  final String sub;
  final String edu;
  final String imgurl;
  final String phoneNumber;
  final containerclr;

  final double circleRadius = 120;

  const StackBuilder(
      {super.key,
      required this.name,
      required this.sub,
      required this.edu,
      required this.imgurl,
      required this.phoneNumber,
      required this.containerclr});
  callNumber(String number) async {
    Uri dialNumber = Uri(scheme: 'tel', path: '$number');
    await launchUrl(dialNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all((MediaQuery.of(context).size.height) / 80),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: circleRadius / 2.0),
            child: Container(
                //replace this Container with your Card
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffDDDDDD),
                        blurRadius: 6.0,
                        spreadRadius: 6.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                    border: Border.all(
                        //width: 2,
                        color: Color.fromARGB(255, 75, 69, 69)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: containerclr),
                height: 190,
                width: (MediaQuery.of(context).size.height) / 5,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 75, 69, 69)),
                    ),
                    Text(
                      sub,
                      style: TextStyle(
                          fontSize: 18,
                          wordSpacing: 2,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 75, 69, 69)),
                    ),
                    Text(
                      edu,
                      style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 0.5,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 75, 69, 69)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\t\t\t\tCall Now",
                          style: TextStyle(
                              wordSpacing: 2,
                              letterSpacing: 0.5,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 75, 69, 69)),
                        ),
                        //SizedBox(width:1),
                        IconButton(
                          onPressed: () {
                            callNumber(phoneNumber);
                          },
                          color: Color(0xff0660C6),
                          icon: Icon(Icons.phone),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(218, 201, 201, 1),
                  blurRadius: 6.0,
                  spreadRadius: 6.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: CircleAvatar(
              radius: 51,
              backgroundColor: Color.fromARGB(255, 220, 166, 166),
              child: CircleAvatar(
                backgroundImage:
                    NetworkImage(/*'assets/images/ty.jpg'*/ imgurl),
                radius: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
