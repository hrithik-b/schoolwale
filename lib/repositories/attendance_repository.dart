import 'package:cloud_firestore/cloud_firestore.dart';

import '../Models/attendance_class.dart';

class AttendanceRepository {
  final FirebaseFirestore _firestore;

  AttendanceRepository({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  CollectionReference<AttendanceClass> get attendanceRef =>
      _firestore.collection('Attendance').withConverter(
          fromFirestore: (snapshot, _) =>
              AttendanceClass.fromJson(snapshot.data()!),
          toFirestore: (attendace, _) => attendace.toJson());
}
