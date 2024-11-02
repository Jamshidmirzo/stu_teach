// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_for_teacher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskForTeacherModel _$TaskForTeacherModelFromJson(Map<String, dynamic> json) {
  return _TaskForTeacherModel.fromJson(json);
}

/// @nodoc
mixin _$TaskForTeacherModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<String> get completedBy => throw _privateConstructorUsedError;
  String? get answerUrl => throw _privateConstructorUsedError;
  String get teacherId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskForTeacherModelCopyWith<TaskForTeacherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskForTeacherModelCopyWith<$Res> {
  factory $TaskForTeacherModelCopyWith(
          TaskForTeacherModel value, $Res Function(TaskForTeacherModel) then) =
      _$TaskForTeacherModelCopyWithImpl<$Res, TaskForTeacherModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime date,
      List<String> completedBy,
      String? answerUrl,
      String teacherId});
}

/// @nodoc
class _$TaskForTeacherModelCopyWithImpl<$Res, $Val extends TaskForTeacherModel>
    implements $TaskForTeacherModelCopyWith<$Res> {
  _$TaskForTeacherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? completedBy = null,
    Object? answerUrl = freezed,
    Object? teacherId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedBy: null == completedBy
          ? _value.completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answerUrl: freezed == answerUrl
          ? _value.answerUrl
          : answerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskForTeacherModelImplCopyWith<$Res>
    implements $TaskForTeacherModelCopyWith<$Res> {
  factory _$$TaskForTeacherModelImplCopyWith(_$TaskForTeacherModelImpl value,
          $Res Function(_$TaskForTeacherModelImpl) then) =
      __$$TaskForTeacherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime date,
      List<String> completedBy,
      String? answerUrl,
      String teacherId});
}

/// @nodoc
class __$$TaskForTeacherModelImplCopyWithImpl<$Res>
    extends _$TaskForTeacherModelCopyWithImpl<$Res, _$TaskForTeacherModelImpl>
    implements _$$TaskForTeacherModelImplCopyWith<$Res> {
  __$$TaskForTeacherModelImplCopyWithImpl(_$TaskForTeacherModelImpl _value,
      $Res Function(_$TaskForTeacherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? date = null,
    Object? completedBy = null,
    Object? answerUrl = freezed,
    Object? teacherId = null,
  }) {
    return _then(_$TaskForTeacherModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedBy: null == completedBy
          ? _value._completedBy
          : completedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answerUrl: freezed == answerUrl
          ? _value.answerUrl
          : answerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskForTeacherModelImpl implements _TaskForTeacherModel {
  _$TaskForTeacherModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.date,
      required final List<String> completedBy,
      required this.answerUrl,
      required this.teacherId})
      : _completedBy = completedBy;

  factory _$TaskForTeacherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskForTeacherModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime date;
  final List<String> _completedBy;
  @override
  List<String> get completedBy {
    if (_completedBy is EqualUnmodifiableListView) return _completedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedBy);
  }

  @override
  final String? answerUrl;
  @override
  final String teacherId;

  @override
  String toString() {
    return 'TaskForTeacherModel(id: $id, title: $title, description: $description, date: $date, completedBy: $completedBy, answerUrl: $answerUrl, teacherId: $teacherId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskForTeacherModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._completedBy, _completedBy) &&
            (identical(other.answerUrl, answerUrl) ||
                other.answerUrl == answerUrl) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, date,
      const DeepCollectionEquality().hash(_completedBy), answerUrl, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskForTeacherModelImplCopyWith<_$TaskForTeacherModelImpl> get copyWith =>
      __$$TaskForTeacherModelImplCopyWithImpl<_$TaskForTeacherModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskForTeacherModelImplToJson(
      this,
    );
  }
}

abstract class _TaskForTeacherModel implements TaskForTeacherModel {
  factory _TaskForTeacherModel(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime date,
      required final List<String> completedBy,
      required final String? answerUrl,
      required final String teacherId}) = _$TaskForTeacherModelImpl;

  factory _TaskForTeacherModel.fromJson(Map<String, dynamic> json) =
      _$TaskForTeacherModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get date;
  @override
  List<String> get completedBy;
  @override
  String? get answerUrl;
  @override
  String get teacherId;
  @override
  @JsonKey(ignore: true)
  _$$TaskForTeacherModelImplCopyWith<_$TaskForTeacherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
