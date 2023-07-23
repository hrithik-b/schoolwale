import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NotesPage extends StatelessWidget {
  final notesData;
  final String subjectNmae;
  const NotesPage(
      {Key? key, required this.notesData, required this.subjectNmae})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    int count = notesData.length;
    print(notesData.values);
    var keys = notesData.keys.toList();
    var values = notesData.values.toList();
    for (int i = 0; i < count; i++) {
      items.add(
        InkWell(
          onTap: () {
            launchURL() async {
              String link = notesData[i];
              print(notesData[i]);
              final Uri url = Uri.parse(link);
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            }

            launchURL();
          },
          child: Card(
            margin: EdgeInsets.only(top: 15),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              // height: 200,
              // width: 200,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    keys[i],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.picture_as_pdf),
                ],
              ),
            ),
          ),
        ),
      );
      // if (count > 1 && count % 2 != 0) {
      //   items.add(
      //     Card(
      //       elevation: 8,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(10),
      //       ),
      //       child: Container(
      //         // height: 200,
      //         // width: 200,
      //         alignment: Alignment.center,
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text(
      //               'Unit1.pdf',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //             Icon(Icons.picture_as_pdf),
      //           ],
      //         ),
      //       ),
      //     ),
      //   );
      // }
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0066C6),
          title: Text('$subjectNmae Notes'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: items,
            ),
          ),
        ));
  }
}
