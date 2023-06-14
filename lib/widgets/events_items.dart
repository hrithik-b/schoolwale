import 'package:flutter/material.dart';

class EventsItems extends StatelessWidget {
   final String eventname;
   final String  eventpictureUrl;
   final String  eventDate;
  const EventsItems({Key? key, required this.eventname, required this.eventpictureUrl, required this.eventDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Container(
              height: ((MediaQuery.of(context).size.height)/10)*3.4,
              width: ((MediaQuery.of(context).size.width)/10)*9.5,
              // width:350,
              // height:250,
              child: Image.network(
                eventpictureUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                eventname,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                eventDate,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
