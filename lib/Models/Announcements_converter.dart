class AnnouncementConverter{
  final String title;
  final String date;
  final String description;

  AnnouncementConverter({
    required this.title,
    required this.date,
    required this.description,
  });

  // Factory constructor to create an Announcement object from JSON data
  factory AnnouncementConverter.fromJson(Map<String, dynamic> json) {
    return AnnouncementConverter(
      title: json['AnnName'] as String,
      date: json['AnnDate'] as  String,
      description: json['CreateDate'] as String,
    );
  }
}
