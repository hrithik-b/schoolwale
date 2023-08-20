class AttendanceClass {
  final String date;
  final List absentees;

  AttendanceClass({required this.date, required this.absentees});

  AttendanceClass.fromJson(Map<String, Object?> json)
      : this(
          date: json['date'] as String,
          absentees: json['absentees'] as List,
        );

  Map<String, Object?> toJson() {
    return {
      'date': date,
      'absentees': absentees,
    };
  }
}
