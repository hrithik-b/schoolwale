import 'package:flutter/material.dart';

class EventsItems extends StatelessWidget {
   final String eventname;
   final String  eventpictureUrl;
  const EventsItems({Key? key, required this.eventname, required this.eventpictureUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Container(
              width:350,
              height:250,
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
          ],
        ),
      ),
    );
  }
}
