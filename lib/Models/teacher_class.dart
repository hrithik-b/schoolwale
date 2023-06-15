class TeacherClass {
  final String teacherName;
  final String teachingSubject;
  final String qualification;
  final int phoneNumber;

  TeacherClass(
      {required this.teacherName,
      required this.teachingSubject,
      required this.qualification,
      required this.phoneNumber});

  TeacherClass.fromJson(Map<String, Object?> json)
      : this(
            teacherName: json['Name']! as String,
            teachingSubject: json['Subjects']! as String,
            qualification: json['Qualification']! as String,
            phoneNumber: json['Phone number']! as int);
}
