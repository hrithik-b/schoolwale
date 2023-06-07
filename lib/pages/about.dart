import 'dart:ui';
import 'homepage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:schoolwale/widgets/aboutContainer.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {

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
          "About School",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "\t\t\t\t\tSt Aloysius",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 34),
            ),
            SizedBox(
              height:((MediaQuery.of(context).size.height)/10)*0.3,
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
                backgroundImage: AssetImage('assets/images/schoolPicture.jpg'),
                radius: 120,
              ),
            ),
            SizedBox(
             // height:((MediaQuery.of(context).size.height)/10)*1,
             height:20,
              // height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width:(MediaQuery.of(context).size.width)/10*9,
              height: (MediaQuery.of(context).size.height)/10*4.7,
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
                      "Our school is a vibrant learning community dedicated to fostering academic excellence and personal growth. With dedicated teachers, state-of-the-art facilities, and a supportive environment, we provide a well-rounded education that prepares students for success in the modern world. Through engaging curriculum, extracurri -cular activities, and a focus on character development, we strive to empower our students to become lifelong learners and responsible global citizens.",
                      style: TextStyle(
                        fontSize: 18,
                        wordSpacing: 3,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
           
            SizedBox(
              height: 2,
            ),
            ContainerWidget(
              cwidth:(MediaQuery.of(context).size.width)/10*9 ,
              cheight:((MediaQuery.of(context).size.height)/10)*3.4,
              heading: "Our Mission",
              content: "Our mission is to provide a nurturing and inclusive learning environment where students can thrive academically, socially, and emotionally. We aim to inspire a love for learning, cultivate critical thinking skills, and foster a strong sense of character and community.",
            ),

            SizedBox(
              height: 20,
            ),

             ContainerWidget(
             cwidth:(MediaQuery.of(context).size.width)/10*9,
              cheight:((MediaQuery.of(context).size.height)/10)*5.3,
              heading:  "Achievements",
              content: "Our school takes pride in its outstanding academic achievements, consistently surpassing national standards and earning recognition for excellence in various subject areas. We have a strong track record of preparing students for higher education, with a high percentage of graduates being accepted into top-tier universities. Additionally, our school has received accolades for its inclusive and diverse community, fostering a supportive environment where every student can thrive.",
            ),

            
             SizedBox(
             // height:((MediaQuery.of(context).size.height)/10)*1,
             height:20,
              // height: 20,
            ),
          ],
        ),
      )),
    );
  }
}