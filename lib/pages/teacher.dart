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

            final List<TeacherClass> teacherList = [];

            for (var val in documents) {
              final object = TeacherClass.fromJson(val);

              teacherList.add(object);
            }

            return TeacherContent(
              teacherList: teacherList,
            );
          },
        ),
      ),
    );
  }
}

class TeacherContent extends StatefulWidget {
  final List<TeacherClass> teacherList;
  const TeacherContent({Key? key, required this.teacherList}) : super(key: key);

  @override
  State<TeacherContent> createState() =>
      _TeacherContentState(teacherList: teacherList);
}

class _TeacherContentState extends State<TeacherContent> {
  final List<TeacherClass> teacherList;

  _TeacherContentState({required this.teacherList});
  @override
  Widget build(BuildContext context) {
    int length = teacherList.length;
    int count = 0;

    List<Widget> widgetItems = [];

    if (length >= 2) {
      for (int i = 0; i < length / 2; i++) {
        widgetItems.add(Row(
          children: [
            StackBuilder(
                name: teacherList[count].teacherName,
                sub: teacherList[count].teachingSubject,
                edu: teacherList[count].qualification,
                imgurl: teacherList[count].imageUrl,
                phoneNumber: teacherList[count].phoneNumber,
                containerclr:
                    Color.fromARGB(255, 241, 179, 222).withOpacity(0.5)),
            StackBuilder(
                name: teacherList[++count].teacherName,
                sub: teacherList[count].teachingSubject,
                edu: teacherList[count].qualification,
                imgurl: teacherList[count].imageUrl,
                phoneNumber: teacherList[count].phoneNumber,
                containerclr:
                    Color.fromARGB(255, 241, 179, 222).withOpacity(0.5)),
          ],
        ));
        count++;
      }
    }

    if (length % 2 != 0) {
      widgetItems.add(
        StackBuilder(
            name: teacherList[count].teacherName,
            sub: teacherList[count].teachingSubject,
            edu: teacherList[count].qualification,
            imgurl: teacherList[count].imageUrl,
            phoneNumber: teacherList[count].phoneNumber,
            containerclr: Color.fromARGB(255, 241, 179, 222).withOpacity(0.5)),
      );
    }
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(children: widgetItems)),
      ),
    );
  }
}
