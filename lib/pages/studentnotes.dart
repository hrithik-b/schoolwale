import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'notes/Socialnotes.dart';
import 'notes/englishnotes.dart';
import 'notes/hindinotes.dart';
import 'notes/kannadanotes.dart';
import 'notes/mathsnotes.dart';
import 'notes/sciencenotes.dart';
import 'notespage.dart';

class Classnotes extends StatelessWidget {
  const Classnotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CardData> cards = [];
    // CardData('English', 'Open'),
    // CardData('kannada', 'Open'),
    // CardData('Hindi', 'Open'),
    // CardData('Mathematics', 'Open'),
    // CardData('Social Science', 'Open'),
    // CardData('Science', 'Open'),
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
        body: FutureBuilder(
          future:
              FirebaseFirestore.instance.collection("Notes").doc('3 A').get(),
          builder: (context, snapshot) {
            if (snapshot.hasError ||
                snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final data = snapshot.data!.data();
            final subjects = (data?.keys);
            subjects!.forEach((element) {
              cards.add(CardData(element));
            });
            //print(data?['Science'].length);
            return Container(
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
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            child: Text("Open"),
                            onPressed: () {
// Navigate to the English notes page
                              final String title = cards[index].title;

                              final notesData = data?[title];

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NotesPage(
                                      subjectNmae: title,
                                      notesData: notesData,
                                    ),
                                  ));
                            }),
                      ],
                    ),
                  );
                }),
              ),
            );
          },
        ));
  }
}

class CardData {
  final String title;

  CardData(this.title);
}
