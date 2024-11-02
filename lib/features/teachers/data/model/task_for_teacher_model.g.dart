// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_for_teacher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskForTeacherModelImpl _$$TaskForTeacherModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskForTeacherModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      date: DateTime.parse(json['date'] as String),
      completedBy: (json['completedBy'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      answerUrl: json['answerUrl'] as String?,
      teacherId: json['teacherId'] as String,
    );

Map<String, dynamic> _$$TaskForTeacherModelImplToJson(
        _$TaskForTeacherModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'completedBy': instance.completedBy,
      'answerUrl': instance.answerUrl,
      'teacherId': instance.teacherId,
    };
