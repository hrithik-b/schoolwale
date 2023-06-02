import 'package:flutter/material.dart';
import 'homepage.dart';

class Teacherstate extends StatefulWidget {
  const Teacherstate({super.key});

  @override
  State<Teacherstate> createState() => _TeacherstateState();
}

class _TeacherstateState extends State<Teacherstate> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0660C6),
        leading: IconButton(onPressed : () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyHomePage()),
  )},icon: Icon(Icons.arrow_back_ios),),
        title: Text(
          "Teachers",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              //principal
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: circleRadius / 2.0),
                    child: Container(
                        //replace this Container with your Card
                        decoration: BoxDecoration(
                            border: Border.all(
                                // width: 2,
                                color: Color.fromARGB(255, 75, 69, 69)),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 241, 179, 222)
                                .withOpacity(0.5)),
                        height: 190,
                        width: 180,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "\nDr. Srinivas",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 75, 69, 69)),
                            ),
                            Text(
                              "Principal",
                              style: TextStyle(
                                  fontSize: 18,
                                  wordSpacing: 2,
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 75, 69, 69)),
                            ),
                            Text(
                              "Masters in journalism",
                              style: TextStyle(
                                  wordSpacing: 2,
                                  letterSpacing: 0.5,
                                  fontSize: 16,
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
                                IconButton(
                                  onPressed: () {},
                                  color: Color(0xff0660C6),
                                  icon: Icon(Icons.phone),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                  CircleAvatar(
                    radius: 51,
                    backgroundColor: Color.fromARGB(255, 75, 69, 69),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),
                      radius: 50,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  //teacher1

                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: circleRadius / 2.0),
                        child: Container(
                            //replace this Container with your Card
                            decoration: BoxDecoration(
                                border: Border.all(
                                 //   width: 2,
                                    color: Color.fromARGB(255, 75, 69, 69)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 179, 191, 241)
                                    .withOpacity(0.5)),
                            height: 190,
                            width: 180,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "\nMs. Namitha",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "Science",
                                  style: TextStyle(
                                      fontSize: 18,
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "Bachelor’s of Education",
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 75, 69, 69)),
                                    ),
                                    //SizedBox(width:1),
                                    IconButton(
                                      onPressed: () {},
                                      color: Color(0xff0660C6),
                                      icon: Icon(Icons.phone),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      CircleAvatar(
                        radius: 51,
                        backgroundColor: Color.fromARGB(255, 75, 69, 69),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
                          radius: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),

                  //teacher2
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: circleRadius / 2.0),
                        child: Container(
                            //replace this Container with your Card
                            decoration: BoxDecoration(
                                border: Border.all(
                                    // width: 1,
                                    color: Color.fromARGB(255, 75, 69, 69)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 241, 206, 179)
                                    .withOpacity(0.5)),
                            height: 190,
                            width: 180,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "\nMs. Hashini",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "English",
                                  style: TextStyle(
                                      fontSize: 18,
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "Bachelor’s of Arts",
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontSize: 16,
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
                                          color:
                                              Color.fromARGB(255, 75, 69, 69)),
                                    ),
                                    //SizedBox(width:1),
                                    IconButton(
                                      onPressed: () {},
                                      color: Color(0xff0660C6),
                                      icon: Icon(Icons.phone),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      CircleAvatar(
                        radius: 51,
                        backgroundColor: Color.fromARGB(255, 75, 69, 69),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/65/18/30/360_F_265183061_NkulfPZgRxbNg3rvYSNGGwi0iD7qbmOp.jpg'),
                          radius: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  //teacher1

                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: circleRadius / 2.0),
                        child: Container(
                            //replace this Container with your Card
                            decoration: BoxDecoration(
                                border: Border.all(
                                    //   width: 2,
                                    color: Color.fromARGB(255, 75, 69, 69)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 241, 179, 179)
                                    .withOpacity(0.5)),
                            height: 190,
                            width: 180,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "\nMr. Jayanth",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "Kannada",
                                  style: TextStyle(
                                      fontSize: 18,
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "Bachelor’s of Education",
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 75, 69, 69)),
                                    ),
                                    //SizedBox(width:1),
                                    IconButton(
                                      onPressed: () {},
                                      color: Color(0xff0660C6),
                                      icon: Icon(Icons.phone),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      CircleAvatar(
                        radius: 51,
                        backgroundColor: Color.fromARGB(255, 75, 69, 69),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbAn_HtsqLqgq0A9G9JB7Ah-ithubsC_AUu-c_4mbT_A&s'),
                         radius: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: circleRadius / 2.0),
                        child: Container(
                            //replace this Container with your Card
                            decoration: BoxDecoration(
                                border: Border.all(
                                    //  width: 2,
                                    color: Color.fromARGB(255, 75, 69, 69)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 201, 179, 241)
                                    .withOpacity(0.5)),
                            height: 190,
                            width: 180,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "\nMs. Joylin",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "Social Science",
                                  style: TextStyle(
                                      fontSize: 18,
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "M.Phil in Education",
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontSize: 16,
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
                                          color:
                                              Color.fromARGB(255, 75, 69, 69)),
                                    ),
                                    //SizedBox(width:1),
                                    IconButton(
                                      onPressed: () {},
                                      color: Color(0xff0660C6),
                                      icon: Icon(Icons.phone),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      CircleAvatar(
                        radius: 51,
                        backgroundColor: Color.fromARGB(255, 75, 69, 69),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg'),
                          radius: 50,
                        ),
                      ),
                    ],
                  ),

                  //teacher2
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: circleRadius / 2.0),
                        child: Container(
                            //replace this Container with your Card
                            decoration: BoxDecoration(
                                border: Border.all(
                                    //width: 2,
                                    color: Color.fromARGB(255, 75, 69, 69)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 114, 207, 176)
                                    .withOpacity(0.5)),
                            height: 190,
                            width: 180,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "\nMr.Tyson",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "Maths",
                                  style: TextStyle(
                                      fontSize: 18,
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "BA in Mathematics",
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
                                          color:
                                              Color.fromARGB(255, 75, 69, 69)),
                                    ),
                                    //SizedBox(width:1),
                                    IconButton(
                                      onPressed: () {},
                                      color: Color(0xff0660C6),
                                      icon: Icon(Icons.phone),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      CircleAvatar(
                        radius: 51,
                        backgroundColor: Color.fromARGB(255, 75, 69, 69),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
                          radius: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: circleRadius / 2.0),
                        child: Container(
                            //replace this Container with your Card
                            decoration: BoxDecoration(
                                border: Border.all(
                                    //width: 2,
                                    color: Color.fromARGB(255, 75, 69, 69)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 167, 202, 79)
                                    .withOpacity(0.5)),
                            height: 190,
                            width: 180,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  "\nMr.Joyal",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "P.T",
                                  style: TextStyle(
                                      fontSize: 18,
                                      wordSpacing: 2,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 75, 69, 69)),
                                ),
                                Text(
                                  "BSc in Physical Therapy",
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
                                          color:
                                              Color.fromARGB(255, 75, 69, 69)),
                                    ),
                                    //SizedBox(width:1),
                                    IconButton(
                                      onPressed: () {},
                                      color: Color(0xff0660C6),
                                      icon: Icon(Icons.phone),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      CircleAvatar(
                        radius: 51,
                        backgroundColor: Color.fromARGB(255, 75, 69, 69),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg'),
                          radius: 50,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ])),
      ),
    );
  }
}
