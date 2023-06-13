class ProfileConverter {
  final String profileImageUrl;
  final String? name;
  final String? grade;
  final String? rollNumber;
  final String? schoolName;
  final String? gender;
  final String? dateOfBirth;
  final String? fathersName;
  final String? mothersName;
  final String? phoneNo;
  final String? address;

  ProfileConverter({
    required this.profileImageUrl,
    this.name,
    this.grade,
    this.rollNumber,
    this.schoolName,
    this.gender,
    this.dateOfBirth,
    this.fathersName,
    this.mothersName,
    this.phoneNo,
    this.address,
  });

  ProfileConverter.fromJson(Map<String, dynamic> json)
      : profileImageUrl = json['profileImageUrl'] ?? '',
        name = json['Full Name'] as String?,
        grade = json['Class'] as String?,
        rollNumber = json['Register No'] as String?,
        schoolName = json['School Name'] as String?,
        gender = json['Gender'] as String?,
        dateOfBirth = json['DOB'] as String?,
        fathersName = json['Fathers Name'] as String?,
        mothersName = json['Mothers Name'] as String?,
        phoneNo = json['Registered_number'] as String?,
        address = json['Address'] as String?;
}
