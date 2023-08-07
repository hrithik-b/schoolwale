import 'package:cloud_firestore/cloud_firestore.dart';
class Events {
  final String name;
  final String img;
  final Timestamp date;
  final String description;

  Events({
    required this.name,
    required this.img,
    required this.date,
    required this.description,
  });

  // Factory constructor to create an Announcement object from JSON data
  
  factory Events.fromJson(Map<String, dynamic> json) {
    return Events(
      name: json['eventName'] as String,
      img: json['imageUrl'] as  String,
       date: json['eventDate'] as Timestamp,
      description: json['description']as String,
     );
  }

}

