import 'package:flutter/material.dart';

class EventsItems extends StatelessWidget {
  final String eventname;
  final String eventpictureUrl;
  final String eventDate;
  final String description;
  const EventsItems(
      {Key? key,
      required this.eventname,
      required this.eventpictureUrl,
      required this.eventDate, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Card(
        
        child: SingleChildScrollView(
          
          physics: BouncingScrollPhysics(),
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: ((MediaQuery.of(context).size.height) / 10) * 3.4,
                width: ((MediaQuery.of(context).size.width) / 10) * 9.5,
                // width:350,
                // height:250,
                child: Image.network(
                  eventpictureUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ExpansionTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      eventname,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 23.0,fontWeight: FontWeight.w500)),
                    ),
                  
                  
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0).copyWith(top: 0),
                      child: Text(
                        eventDate,
                       // textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                                       Padding(
                      padding: const EdgeInsets.all(8.0).copyWith(top: 0),
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Text(
              //     eventDate,
              //     style: TextStyle(fontSize: 20.0),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}