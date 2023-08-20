import 'package:schoolwale/Models/attendance_class.dart';
import 'package:schoolwale/repositories/attendance_repository.dart';

class AttendanceService {
  final AttendanceRepository _repository;

  AttendanceService({AttendanceRepository? repository})
      : _repository = repository ?? AttendanceRepository();

  Stream<List<AttendanceClass>> get attendanceList {
    return _repository.attendanceRef
        .snapshots()
        .map((event) => event.docs.map((e) => e.data()).toList());
  }
}
