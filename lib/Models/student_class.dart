class StudentInfo {
  final String registeredNumbers;
  final String registerNumber;
  StudentInfo({required this.registeredNumbers, required this.registerNumber});

  StudentInfo.fromJson(Map<String, Object?> json)
      : this(
            registeredNumbers: json['Registered_number']! as String,
            registerNumber: json['Register No'] as String);
}
