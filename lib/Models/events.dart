class Events {
  final String name;
  final String img;
  final String date;

  Events({
    required this.name,
    required this.img,
    required this.date,
  });

  // Factory constructor to create an Announcement object from JSON data
  
  factory Events.fromJson(Map<String, dynamic> json) {
    return Events(
      name: json['eventName'] as String,
      img: json['imageUrl'] as  String,
       date: json['event_date'] as String,
     );
  }

}

