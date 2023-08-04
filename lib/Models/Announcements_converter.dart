class AnnouncementConverter{
  final String title;
  final DateTime date;
  final DateTime scheduled_date;
  final String description;

  AnnouncementConverter({
    required this.title,
    required this.date,
    required this.description,
    required this.scheduled_date,
  });

  // Factory constructor to create an Announcement object from JSON data
  factory AnnouncementConverter.fromJson(Map<String, dynamic> json) {
    return AnnouncementConverter(
      title: json['AnnName'] as String,
      scheduled_date: DateTime.parse(json['scheduledDate']),
      description: json['description'] as String,
      date: DateTime.parse(json['CreateDate']),
    );
  }
}