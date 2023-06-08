import 'package:flutter/material.dart';
import 'package:schoolwale/pages/annoucement_page.dart';
import 'package:schoolwale/pages/profilepage.dart';
import 'package:schoolwale/pages/resultpage.dart';
import 'package:schoolwale/widgets/bottom_nav.dart';
import 'package:schoolwale/widgets/slider.dart';
import 'package:schoolwale/widgets/nav_drawer.dart';
import 'package:schoolwale/widgets/carousel_slider.dart';
import 'package:schoolwale/widgets/teachers_widget.dart';



class MyHomePage extends StatelessWidget{
  
  const MyHomePage({super.key});

  get selectedItemColor => null;

 @override
  Widget build(BuildContext context) {
    
    const title = 'Schoolwale';
    
    return Scaffold(
      
      drawer: const NavDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xff0066C6),
          title:const Align(

            alignment: Alignment.center,
            child: Text(title),
            //color: Colors.blue,

          ),
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(

            alignment: Alignment.bottomCenter,
            //constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/layout-1.png"),
                fit: BoxFit.cover,
              ),
            ),

            child: Column
              (
              mainAxisAlignment: MainAxisAlignment.start,

              children: <Widget>[
                Container(

                  child: const Padding(
                    padding: EdgeInsets.only(top:30,left: 20),
                    child: Text('Hello Chintu',  textAlign: TextAlign.left,
                      style: TextStyle(
                          color:Colors.white70,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                //end

                const CustomSlider(),
                const CustomCarouselSlider(),
                const TeacherWidget(),

              ],
            ),
          ),

        ),


   bottomNavigationBar: BottomAppBar(

        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            IconButton(

              icon: Icon(Icons.home_outlined,
                size: 30.0,
                color: Colors.blue[700]!,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MyHomePage()),

                );
                },


            ),
         IconButton(
              icon: Icon(Icons.campaign_outlined,size: 30.0,color:Colors.blue[700]!),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  annoucement()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.menu_book_outlined,size: 30.0,color: Colors.blue[700]!),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage()),
                );
                // Home action
              },
            ),
            IconButton(
              icon: Icon(Icons.person_outline,size: 30.0,color: Colors.blue[700]!),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myprofile()),
                );
              },
            ),
            // selectedItemColor: Colors.blue,
            // unselectedItemColor: Colors.grey,
        ],
      //  currentIndex:0,
      //  selectedItemColor:Colors.blue,
        ),
   ),
    );
        }

  }
