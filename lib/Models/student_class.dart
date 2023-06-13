class StudentInfo {
  final int registeredNumbers;
  final int registerNumber;
  StudentInfo({required this.registeredNumbers, required this.registerNumber});

  StudentInfo.fromJson(Map<String, Object?> json)
      : this(
            registeredNumbers: json['Registered_number']! as int,
            registerNumber: json['Register No'] as int);
}
