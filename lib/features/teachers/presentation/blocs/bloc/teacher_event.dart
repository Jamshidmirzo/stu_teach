part of 'teacher_bloc.dart';

@freezed
class TeacherEvent with _$TeacherEvent {
  const factory TeacherEvent.getStudnet() = _getStudents;
  const factory TeacherEvent.addTask(TaskEntityForTeacher entity,List<File> files) = _addTask;
}