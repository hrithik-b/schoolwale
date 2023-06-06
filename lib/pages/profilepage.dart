import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              // Define the action to be performed when the arrow icon is pressed
              // For example, you can navigate to the previous screen
              Navigator.pop(context);
            },
          ),
           backgroundColor: Color(0xff0066C6),
          title: Text('Student Profile'),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: SizedBox(
             child: Card(
           child: Expanded(
             child: Container(
              // height:((MediaQuery.of(context).size.height)/10)*3,
              // width:((MediaQuery.of(context).size.width)/10)*7,
               height:700,
               width: 550,
               child: Column(

              children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxuNUs9ZDQxIa3CDazSLsA3qpoL690zMGeZo1aruEoDg&usqp=CAU&ec=48665701'),
              ),

              SizedBox(height: 16),
              Text('Chintu Rao'),
              SizedBox(height: 8),
              Text(' IX'),
              SizedBox(height: 8),
              Text('2117026'),
              SizedBox(height: 16),
              Card(

                elevation: 8,
                shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20),
                 ),
                margin: EdgeInsets.all(8),
                color: Colors.lightBlue[50],
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.school,
                        color: Colors.blue,
                      ),
                      title: Text('School Name'),
                      subtitle: Text('Vishwamangala High School Mangaluru'),
                    ),
                    ListTile(
                      leading: Icon(Icons.boy,
                        color: Colors.blue,
                      ),
                      title: Text('Gender'),
                      subtitle: Text('Male'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cake_outlined,
                        color: Colors.blue,
                      ),
                      title: Text('Date of Birth'),
                      subtitle: Text('29-09-2017'),
                    ),
                    ListTile(
                      leading: Icon(Icons.person,
                        color: Colors.blue,
                      ),
                      title: Text('Fathers Name'),
                      subtitle: Text('lakshmana Rao'),

                    ),
                    ListTile(
                      leading: Icon(Icons.girl,
                        color: Colors.blue,
                      ),
                      title: Text('Mothers Name'),
                      subtitle: Text('seetha Rai'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone,
                        color: Colors.blue,
                      ),
                      title: Text('Phone No'),
                      subtitle: Text('9591205429'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_city_outlined,
                        color: Colors.blue,
                      ),
                      title: Text('Address'),
                      subtitle: Text('Armady House,kairangala post,Bantwal taluk'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      )
      )
      )
      )
    );

  }
}
