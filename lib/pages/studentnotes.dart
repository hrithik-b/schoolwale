import 'package:flutter/material.dart';

import 'notes/Socialnotes.dart';
import 'notes/englishnotes.dart';
import 'notes/hindinotes.dart';
import 'notes/kannadanotes.dart';
import 'notes/mathsnotes.dart';
import 'notes/sciencenotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: classnotes(),
    );
  }
}


class classnotes extends StatelessWidget {
  const classnotes ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final List<CardData> cards = [
      CardData('English', 'Open'),
      CardData('kannada', 'Open'),
      CardData('Hindi', 'Open'),
      CardData('Mathematics', 'Open'),
      CardData('Social Science', 'Open'),
      CardData('Science', 'Open'),
    ];
    return Scaffold(
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
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 30.0,
          children: List.generate(cards.length, (index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    cards[index].title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height:20),

                  ElevatedButton(
                    child: Text(cards[index].buttonText),

                    onPressed: () {
                      // Navigate to the English notes page
                      if(cards[index].title == "English"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => englishnotes(),)
                        );
                      }else if(cards[index].title == "kannada"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => kannadanotes(),)
                        );
                       }
                      else if(cards[index].title == "Hindi"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => hindihnotes(),)
                        );
                      }else if(cards[index].title == "Mathematics"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => mathsnotes(),)
                        );
                      }else if(cards[index].title == "Social Science"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Socialnotes(),)
                        );
                      }else if(cards[index].title == "Science"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => sciencenotes(),)
                        );
                      }

                    },

                  ),
                ],
              ),
            );
          }),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
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
      // ),
    );
  }


}

class CardData {
  final String title;
  final String buttonText;

  CardData(this.title, this.buttonText);
}
