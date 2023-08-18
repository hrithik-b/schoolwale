import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/time_table_item.dart';
import 'package:photo_view/photo_view.dart';

class TimeTable extends StatefulWidget {
  final String classname;
  final String section;
  const TimeTable({super.key, this.classname="",this.section=''});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
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
          title: Text('Timetable'),
          centerTitle: true,
        ),
        body: FutureBuilder(
            future: FirebaseFirestore.instance
                .collection("Timetable")
                .where('class' ,isEqualTo: widget.classname)
                .where('section' ,isEqualTo: widget.section)
                .get(),
            builder: (context, snapshot) {
              if (snapshot.hasError ||
                  snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              final docs = snapshot.data!.docs;

              if (docs.isEmpty) {
                return Text('No documents');
              }

              final data = docs.first.data();
              final imageUrl = data['imageUrl'];
              final className = data['class'];

              return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
// height: ((MediaQuery.of(context).size.height) / 10) * 7,
// width: ((MediaQuery.of(context).size.width) / 10) * 9,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          (MediaQuery.of(context).size.width) / 10 * 0.5),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                       InteractiveViewer(
                        panEnabled: false, // Set it to false
                        boundaryMargin: EdgeInsets.all(100),
                        minScale: 0.5,
                        maxScale: 2,
                        child: Image.network(
                          imageUrl,
                          width: ((MediaQuery.of(context).size.width) / 10) * 9,
                          height:
                              ((MediaQuery.of(context).size.height) / 10) * 5,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Center(
                        child:Text(
                        className,
                          style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    
                    
                  ),
                      ) 
                      ,)
                   ], ),
                    ),
                  ]);
            }

            ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            height: 50.0,
            width: 65.0,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



