import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Models/teacher_class.dart';
import 'homepage.dart';
import 'package:schoolwale/widgets/teacherstack.dart';

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
        leading: IconButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            )
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Teachers",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Teachers").snapshots(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError ||
                snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }

            final documents = snapshot.data!.docs.map((e) {
              return e.data();
            });

            final List<Object> teacherList = [];
            print(documents);

            for (var val in documents) {
              //print(val);
              final object = TeacherClass.fromJson(val);
              print(object.phoneNumber);
              teacherList.add(object);
            }
            print(teacherList.length);

            return TeacherContent();
          },
        ),
      ),
    );
  }
}

class TeacherContent extends StatefulWidget {
  const TeacherContent({Key? key}) : super(key: key);

  @override
  State<TeacherContent> createState() => _TeacherContentState();
}

class _TeacherContentState extends State<TeacherContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              StackBuilder(
                  name: "\nDr. Srinivas",
                  sub: "Principal",
                  edu: "MSE",
                  imgurl:
                      "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
                  containerclr:
                      Color.fromARGB(255, 241, 179, 222).withOpacity(0.5)),
              SizedBox(
                height: (MediaQuery.of(context).size.height) / 10 * 0.5,
              ),
              Row(
                children: [
                  //teacher1
                  SizedBox(
                    // width: (MediaQuery.of(context).size.width)/10*1.5,
                    width: 10,
                  ),
                  StackBuilder(
                      name: "\nMs. Namitha",
                      sub: "Science",
                      edu: "B.ED",
                      imgurl:
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                      containerclr:
                          Color.fromARGB(255, 179, 191, 241).withOpacity(0.5)),

                  SizedBox(
                    width: (MediaQuery.of(context).size.width) / 10 * 0.5,
                    // width: 15,
                  ),
                  StackBuilder(
                      name: "\nMs. Hashini",
                      sub: "English",
                      edu: "B.ED",
                      imgurl:
                          "https://t3.ftcdn.net/jpg/02/65/18/30/360_F_265183061_NkulfPZgRxbNg3rvYSNGGwi0iD7qbmOp.jpg",
                      containerclr:
                          Color.fromARGB(255, 241, 206, 179).withOpacity(0.5)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  StackBuilder(
                      name: "\nMs. Joylin",
                      sub: "Social Science",
                      edu: "M.Phil",
                      imgurl:
                          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                      containerclr:
                          Color.fromARGB(255, 201, 179, 241).withOpacity(0.5)),

                  SizedBox(
                    height: 20,
                    width: (MediaQuery.of(context).size.width) / 10 * 0.5,
                    // width: 15,
                  ),

                  StackBuilder(
                      name: "\nMr. Jayanth",
                      sub: "Kannada",
                      edu: "B.ED",
                      imgurl:
                          "https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                      containerclr: Color.fromARGB(255, 114, 207, 176)
                          .withOpacity(0.5)), //teacher2
                ],
              ),
              SizedBox(
                // width: (MediaQuery.of(context).size.width)/10*1.5,
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    // width: (MediaQuery.of(context).size.width)/10*1.5,
                    width: 15,
                  ),
                  StackBuilder(
                      name: "\nMr.Joyal",
                      sub: "P.T",
                      edu: "BSc",
                      imgurl:
                          "https://c8.alamy.com/comp/CW19M1/good-looking-mature-asian-indian-male-with-formal-wear-isolated-on-CW19M1.jpg",
                      containerclr:
                          Color.fromARGB(255, 167, 202, 79).withOpacity(0.5)),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width) / 10 * 0.5,
                  ),
                  StackBuilder(
                      name: "\nMr.Tyson",
                      sub: "Maths",
                      edu: "Ms.Maths",
                      imgurl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR847fTNPDSUIClac9xYdCAUalRXP9QDG9bzkgGcTAmmw&usqp=CAU&ec=48665701",
                      containerclr:
                          Color.fromARGB(255, 241, 206, 179).withOpacity(0.5)),
                ],
              )
            ])),
      ),
    );
  }
}
