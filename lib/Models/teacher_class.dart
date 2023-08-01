class TeacherClass {
  final String teacherName;
  final String teachingSubject;
  final String qualification;
  final String phoneNumber;
  final String imageUrl;

  TeacherClass(
      {required this.teacherName,
      required this.teachingSubject,
      required this.qualification,
      required this.phoneNumber,
      required this.imageUrl});

  TeacherClass.fromJson(Map<String, Object?> json)
      : this(
            teacherName: json['name']! as String,
            teachingSubject: json['subject']! as String,
            qualification: json['qualification']! as String,
            phoneNumber: json['phoneNo']! as String,
            imageUrl: json['imageUrl']! as String);
}
