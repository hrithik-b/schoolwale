import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'homepage.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
 
//List<String> values=['https://www.shutterstock.com/image-photo/prayag-public-school-india-22112015-260nw-1449541445.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSDVvNVZDXqjgqEvDaSZQ0OSG_T0rRQPjICH6VQCdNrw&s','https://school.vssc.gov.in/assets/img/slide/slide-2_large.jpg','https://www.shutterstock.com/image-photo/prayag-public-school-india-22112015-260nw-1449541445.jpg'];


  @override
  
  
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        backgroundColor: Color(0xff0660C6),
        leading: IconButton(onPressed : () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyHomePage()),
  )},icon: Icon(Icons.arrow_back_ios),),
        title: Text("About School",style: TextStyle(
    fontSize: 20,fontWeight: FontWeight.bold),),
      centerTitle: true,
      ),
     
       body:Center(
        child:SingleChildScrollView(
          child: Column(
            children: [
                Text(
                  "\t\t\t\t\tSt\nAloysius", style: TextStyle(
                    color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 34
                  ),
                ),
                 SizedBox(
                height: 20,
              ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/schoolPicture.jpg'),
                  radius: 120,
                ),
                SizedBox(
                height: 20,
              ),
               Container(
            alignment: Alignment.center,
            width:350,
            height: 350,
            decoration: BoxDecoration(
               color: Color.fromRGBO(221, 215, 245, 0.302),
              borderRadius: BorderRadius.circular(30),
            
                
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Our school is a vibrant learning community dedicated to fostering academic excellence and personal growth. With dedicated teachers, state-of-the-art facilities, and a supportive environment, we provide a well-rounded education that prepares students for success in the modern world. Through engaging curriculum, extracurri -cular activities, and a focus on character development, we strive to empower our students to become lifelong learners and responsible global citizens.",style: TextStyle(
                      fontSize: 18,wordSpacing: 3,letterSpacing: 1,
                    ),
                  ),
                  
                ),
              ],
              
            
            ),
   
          ),
            
          SizedBox(
            height: 20,
          ),
         /* Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(242, 242, 245, 0.302),
              ),
              padding:EdgeInsets.all(12),
                  height: 370,
                  width:350,
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                
                      return Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                              image: AssetImage(values[index]),fit:BoxFit.cover
                    )),
                        child: Center(child: 
                     Image.network(values[index]),),);
                              },
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 9,mainAxisSpacing: 9,),
                              
                    ),
                  ),
                ),
          ),*/
           SizedBox(
                height: 2,
              ),
               Container(
            alignment: Alignment.center,
            width:350,
            height: 250,
            decoration: BoxDecoration(
               color: Color.fromRGBO(221, 215, 245, 0.302),
              borderRadius: BorderRadius.circular(30),
      
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Our Mission",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,wordSpacing: 3,letterSpacing: 1,
                    ),
                  ),
                  
                ),
                Expanded(child: Padding(padding: const EdgeInsets.all(10.0),
                  child: Text(
                   "Our mission is to provide a nurturing and inclusive learning environment where students can thrive academically, socially, and emotionally. We aim to inspire a love for learning, cultivate critical thinking skills, and foster a strong sense of character and community.",style: TextStyle(
                      fontSize: 18,wordSpacing: 3,letterSpacing: 1,
                    ),
                  ),
                  
                ),
                ),
              ],
              
            
            ),
   
          ),
          SizedBox(
            height: 10,
          ),
           Container(
            alignment: Alignment.center,
            width:350,
            height: 370,
            decoration: BoxDecoration(
               color: Color.fromRGBO(221, 215, 245, 0.302),
              borderRadius: BorderRadius.circular(30),
      
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Achievements",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,wordSpacing: 3,letterSpacing: 1,
                    ),
                  ),
                  
                ),
                Expanded(child: Padding(padding: const EdgeInsets.all(8.0),
                  child: Text(
                   "Our school takes pride in its outstanding academic achievements, consistently surpassing national standards and earning recognition for excellence in various subject areas. We have a strong track record of preparing students for higher education, with a high percentage of graduates being accepted into top-tier universities. Additionally, our school has received accolades for its inclusive and diverse community, fostering a supportive environment where every student can thrive.",style: TextStyle(
                      fontSize: 18,wordSpacing: 3,letterSpacing: 1,
                    ),
                  ),
                  
                ),
                ),
              ],
              
            
            ),
   
          ),
            
            ],

               ),
        )
    ),
    );
    
  }
  
}
