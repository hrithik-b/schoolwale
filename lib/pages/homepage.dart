import 'package:flutter/material.dart';
import 'package:schoolwale/widgets/slider.dart';
import 'package:schoolwale/widgets/nav_drawer.dart';
import 'package:schoolwale/widgets/carousel_slider.dart';
import 'package:schoolwale/widgets/teachers_widget.dart';


class MyHomePage extends StatelessWidget{
  
  const MyHomePage({super.key});

 @override
  Widget build(BuildContext context) {
    const title = 'Schoolwale';
    
    return Scaffold(
      
      drawer: const NavDrawer(),
      appBar: AppBar(
        title:const Align(
          alignment: Alignment.center,
          child: Text(title),

                  //backgroundColor: const Color.fromARGB(0,6,96,198),
        
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
                  child: Text('Hello \nChintu', style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              //end
      
              const CustomSlider(),
              const CustomCarouselSlider(),
              const TeacherWidget()
            ],
          ),
          
      
      
      
      
      
      
      
      
      
      
      
          //   child: ListView(
          //     // This next line does the trick.
          //     scrollDirection: Axis.horizontal,
          //     children: <Widget>[
          //       Container(
          //         width: 160.0,
          //         color: Colors.red,
          //       ),
          //       Container(
          //         width: 160.0,
          //         color: Colors.blue,
          //       ),
          //       Container(
          //         width: 160.0,
          //         color: Colors.green,
          //       ),
          //       Container(
          //         width: 160.0,
          //         color: Colors.yellow,
          //       ),
          //       Container(
          //         width: 160.0,
          //         color: Colors.orange,
          //       ),
          //     ],
          //   ),
          // ),
        
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: "Home"
      
        //       ),
        //       BottomNavigationBarItem(
        //       icon: Icon(Icons.announcement),
        //       label: "Announcments"
      
        //       ),BottomNavigationBarItem(
        //       icon: Icon(Icons.book),
        //       label: "Result"
      
        //       ),BottomNavigationBarItem(
        //       icon: Icon(Icons.account_box_rounded),
        //       label: "Profile"
      
        //       ),
        //   ]),
          ),

      ));
      //  bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(
      //         icon: Icon(Icons.home),
      //         onPressed: () {
      //           // Home action
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.announcement),
      //         onPressed: () {
      //           // Search action
      //         },
      //       ),
      //       SizedBox(),
      //       IconButton(
      //         icon: Icon(Icons.menu_book),
      //         onPressed: () {
      //           // Settings action
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.person),
      //         onPressed: () {
      //           // Notifications action
      //         },
      //       ),
      //     ],
      //   ),
      //  );
    
  
      
  }
}