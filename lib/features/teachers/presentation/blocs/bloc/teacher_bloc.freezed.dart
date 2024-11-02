// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeacherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudnet,
    required TResult Function(TaskEntityForTeacher entity, List<File> files)
        addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudnet,
    TResult? Function(TaskEntityForTeacher entity, List<File> files)? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudnet,
    TResult Function(TaskEntityForTeacher entity, List<File> files)? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getStudents value) getStudnet,
    required TResult Function(_addTask value) addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getStudents value)? getStudnet,
    TResult? Function(_addTask value)? addTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getStudents value)? getStudnet,
    TResult Function(_addTask value)? addTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherEventCopyWith<$Res> {
  factory $TeacherEventCopyWith(
          TeacherEvent value, $Res Function(TeacherEvent) then) =
      _$TeacherEventCopyWithImpl<$Res, TeacherEvent>;
}

/// @nodoc
class _$TeacherEventCopyWithImpl<$Res, $Val extends TeacherEvent>
    implements $TeacherEventCopyWith<$Res> {
  _$TeacherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getStudentsImplCopyWith<$Res> {
  factory _$$getStudentsImplCopyWith(
          _$getStudentsImpl value, $Res Function(_$getStudentsImpl) then) =
      __$$getStudentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getStudentsImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$getStudentsImpl>
    implements _$$getStudentsImplCopyWith<$Res> {
  __$$getStudentsImplCopyWithImpl(
      _$getStudentsImpl _value, $Res Function(_$getStudentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getStudentsImpl implements _getStudents {
  const _$getStudentsImpl();

  @override
  String toString() {
    return 'TeacherEvent.getStudnet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getStudentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudnet,
    required TResult Function(TaskEntityForTeacher entity, List<File> files)
        addTask,
  }) {
    return getStudnet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudnet,
    TResult? Function(TaskEntityForTeacher entity, List<File> files)? addTask,
  }) {
    return getStudnet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudnet,
    TResult Function(TaskEntityForTeacher entity, List<File> files)? addTask,
    required TResult orElse(),
  }) {
    if (getStudnet != null) {
      return getStudnet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getStudents value) getStudnet,
    required TResult Function(_addTask value) addTask,
  }) {
    return getStudnet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getStudents value)? getStudnet,
    TResult? Function(_addTask value)? addTask,
  }) {
    return getStudnet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getStudents value)? getStudnet,
    TResult Function(_addTask value)? addTask,
    required TResult orElse(),
  }) {
    if (getStudnet != null) {
      return getStudnet(this);
    }
    return orElse();
  }
}

abstract class _getStudents implements TeacherEvent {
  const factory _getStudents() = _$getStudentsImpl;
}

/// @nodoc
abstract class _$$addTaskImplCopyWith<$Res> {
  factory _$$addTaskImplCopyWith(
          _$addTaskImpl value, $Res Function(_$addTaskImpl) then) =
      __$$addTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntityForTeacher entity, List<File> files});
}

/// @nodoc
class __$$addTaskImplCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$addTaskImpl>
    implements _$$addTaskImplCopyWith<$Res> {
  __$$addTaskImplCopyWithImpl(
      _$addTaskImpl _value, $Res Function(_$addTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? files = null,
  }) {
    return _then(_$addTaskImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as TaskEntityForTeacher,
      null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$addTaskImpl implements _addTask {
  const _$addTaskImpl(this.entity, final List<File> files) : _files = files;

  @override
  final TaskEntityForTeacher entity;
  final List<File> _files;
  @override
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'TeacherEvent.addTask(entity: $entity, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addTaskImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, entity, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addTaskImplCopyWith<_$addTaskImpl> get copyWith =>
      __$$addTaskImplCopyWithImpl<_$addTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudnet,
    required TResult Function(TaskEntityForTeacher entity, List<File> files)
        addTask,
  }) {
    return addTask(entity, files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudnet,
    TResult? Function(TaskEntityForTeacher entity, List<File> files)? addTask,
  }) {
    return addTask?.call(entity, files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudnet,
    TResult Function(TaskEntityForTeacher entity, List<File> files)? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(entity, files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getStudents value) getStudnet,
    required TResult Function(_addTask value) addTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getStudents value)? getStudnet,
    TResult? Function(_addTask value)? addTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getStudents value)? getStudnet,
    TResult Function(_addTask value)? addTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _addTask implements TeacherEvent {
  const factory _addTask(
          final TaskEntityForTeacher entity, final List<File> files) =
      _$addTaskImpl;

  TaskEntityForTeacher get entity;
  List<File> get files;
  @JsonKey(ignore: true)
  _$$addTaskImplCopyWith<_$addTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherState {
  Status get status => throw _privateConstructorUsedError;
  List<UserModel>? get users => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherStateCopyWith<TeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res, TeacherState>;
  @useResult
  $Res call({Status status, List<UserModel>? users, String? message});
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res, $Val extends TeacherState>
    implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherStateImplCopyWith<$Res>
    implements $TeacherStateCopyWith<$Res> {
  factory _$$TeacherStateImplCopyWith(
          _$TeacherStateImpl value, $Res Function(_$TeacherStateImpl) then) =
      __$$TeacherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<UserModel>? users, String? message});
}

/// @nodoc
class __$$TeacherStateImplCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$TeacherStateImpl>
    implements _$$TeacherStateImplCopyWith<$Res> {
  __$$TeacherStateImplCopyWithImpl(
      _$TeacherStateImpl _value, $Res Function(_$TeacherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = freezed,
    Object? message = freezed,
  }) {
    return _then(_$TeacherStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TeacherStateImpl implements _TeacherState {
  const _$TeacherStateImpl(
      {this.status = Status.Loading,
      final List<UserModel>? users,
      this.message})
      : _users = users;

  @override
  @JsonKey()
  final Status status;
  final List<UserModel>? _users;
  @override
  List<UserModel>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'TeacherState(status: $status, users: $users, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_users), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      __$$TeacherStateImplCopyWithImpl<_$TeacherStateImpl>(this, _$identity);
}

abstract class _TeacherState implements TeacherState {
  const factory _TeacherState(
      {final Status status,
      final List<UserModel>? users,
      final String? message}) = _$TeacherStateImpl;

  @override
  Status get status;
  @override
  List<UserModel>? get users;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$TeacherStateImplCopyWith<_$TeacherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
