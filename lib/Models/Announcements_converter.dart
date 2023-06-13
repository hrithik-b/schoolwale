


class Announcement {
  final String title;
  final String date;
  final String description;

  Announcement({
    required this.title,
    required this.date,
    required this.description,
  });

  // Factory constructor to create an Announcement object from JSON data
  factory Announcement.fromJson(Map<String, dynamic> json) {
    return Announcement(
      title: json['AnnName'] as String,
      date: json['AnnDate'] as  String,
      description: json['CreateDate'] as String,
    );
  }
}
