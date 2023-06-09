class MarksConverter {
  final int passingMarks;
  final int totalMarks;
  var map = new Map();

  MarksConverter(
      {required this.passingMarks,
      required this.map,
      required this.totalMarks});

  MarksConverter.fromJson(Map<String, Object?> json)
      : this(
            passingMarks: json['Passing_marks']! as int,
            map: json['SubjectMarks']! as Map,
            totalMarks: json['Total_marks']! as int);
}
