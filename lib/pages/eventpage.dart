
// import 'package:flutter/material.dart';

// import '../widgets/events_items.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Events Page',
//       home: Eventsupload(),
//     );
//   }
// }

// class Eventsupload extends StatefulWidget {
//   @override
//   _EventsuploadState createState() => _EventsuploadState();
// }

// class _EventsuploadState extends State<Eventsupload> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios_new),
//           onPressed: () {
//             // Define the action to be performed when the arrow icon is pressed
//             // For example, you can navigate to the previous screen
//             Navigator.pop(context);
//           },
//         ),
//          backgroundColor: Color(0xff0066C6),
//         title: Text('Events'),
//         centerTitle: true,

//       ),
//       body: ListView(
//         children: [


//    //EventsItems(eventname: 'Singing Competition', eventpictureUrl:'https://i.pinimg.com/236x/be/81/19/be8119e6863dceba6f06ec1b25eed298--cultural-real-life.jpg',
//       //   ),
//       // EventsItems(eventname: 'Fancy Dress competition', eventpictureUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_9BTgKlyi6ziH7KeOgPjCw1KCvnOQVqHrIMwJgAoVQ&usqp=CAU&ec=48665701',
//       // ),
//       //     EventsItems(eventname: 'Sports day', eventpictureUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfCS7XFCGMRV0a_XJqsIy2bQG71mWUUF4wcvQ5HCBKmw&usqp=CAU&ec=48665701',
//       //     ),
//       //     EventsItems(eventname: 'Annual Day', eventpictureUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXH560aCpV7Qd2ZvFp673LeJfYWkslvjrM8ynI5i_hsQ&usqp=CAU&ec=48665701',
//       //     ),
//         // Card(
//           //   child: Column(
//           //     children: [
//           //       Container(
//           //         width:350,
//           //         height:250,
//           //         child: Image.network(
//           //           'https://i.pinimg.com/236x/be/81/19/be8119e6863dceba6f06ec1b25eed298--cultural-real-life.jpg',
//           //           fit: BoxFit.cover,
//           //         ),
//           //       ),
//           //       Padding(
//           //         padding: const EdgeInsets.all(10.0),
//           //         child: Text(
//           //           'Singing Competation',
//           //           style: TextStyle(fontSize: 20.0),
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Card(
//           //   child: Column(
//           //     children: [
//           //       Container(
//           //     width:350,
//           //     height:250,
//           //         child: Image.network(
//           //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_9BTgKlyi6ziH7KeOgPjCw1KCvnOQVqHrIMwJgAoVQ&usqp=CAU&ec=48665701',
//           //           fit: BoxFit.cover,
//           //         ),
//           //       ),
//           //       Padding(
//           //         padding: const EdgeInsets.all(10.0),
//           //         child: Text(
//           //           'Fancy dress competition',
//           //           style: TextStyle(fontSize: 20.0),
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Card(
//           //   child: Column(
//           //     children: [
//           //       Container(
//           //         width:350,
//           //         height:250,
//           //         child: Image.network(
//           //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfCS7XFCGMRV0a_XJqsIy2bQG71mWUUF4wcvQ5HCBKmw&usqp=CAU&ec=48665701',
//           //           fit: BoxFit.cover,
//           //         ),
//           //       ),
//           //       Padding(
//           //         padding: const EdgeInsets.all(10.0),
//           //         child: Text(
//           //           'Sports day',
//           //           style: TextStyle(fontSize: 20.0),
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//           // Card(
//           //   child: Column(
//           //     children: [
//           //       Container(
//           //         width:350,
//           //         height:250,
//           //         child: Image.network(
//           //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXH560aCpV7Qd2ZvFp673LeJfYWkslvjrM8ynI5i_hsQ&usqp=CAU&ec=48665701',
//           //           fit: BoxFit.cover,
//           //         ),
//           //       ),
//           //       Padding(
//           //         padding: const EdgeInsets.all(10.0),
//           //         child: Text(
//           //           'Annual day',
//           //           style: TextStyle(fontSize: 20.0),
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/events_items.dart';
class Event_main extends StatelessWidget {
  const Event_main({super.key});

  @override
  Widget build(BuildContext context) {
   
      return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
//             // Define the action to be performed when the arrow icon is pressed
//             // For example, you can navigate to the previous screen
            Navigator.pop(context);
          },
        ),
         backgroundColor: Color(0xff0066C6),
        title: Text('Events'),
        centerTitle: true,

      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Event").get(),
        builder: (context, snapshot) {
          if (snapshot.hasError || snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          final data = snapshot.data!.docs;
          final events = data.map((doc) => doc.data()).toList();
          return eventPageContent(events: events);
        },
      ),
    );
  }
}
class eventPageContent extends StatelessWidget {
  final List<Map<String, dynamic>> events;
  const eventPageContent({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return  EventsItems(
          eventname: event['eventName'],
         eventpictureUrl: event['imageUrl'],
         eventDate: event['event_date'],
         description:event['description']

          // icon: announcement['icon'],
        );
      },

    );
  }
}