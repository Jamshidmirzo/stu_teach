// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity entity) logIn,
    required TResult Function(AuthEntity entity, String role) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) resetPass,
    required TResult Function() getUser,
    required TResult Function() checkUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity entity)? logIn,
    TResult? Function(AuthEntity entity, String role)? signUp,
    TResult? Function()? logOut,
    TResult? Function(String email)? resetPass,
    TResult? Function()? getUser,
    TResult? Function()? checkUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity entity)? logIn,
    TResult Function(AuthEntity entity, String role)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? resetPass,
    TResult Function()? getUser,
    TResult Function()? checkUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResetPass value) resetPass,
    required TResult Function(_getUser value) getUser,
    required TResult Function(_checkUser value) checkUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResetPass value)? resetPass,
    TResult? Function(_getUser value)? getUser,
    TResult? Function(_checkUser value)? checkUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResetPass value)? resetPass,
    TResult Function(_getUser value)? getUser,
    TResult Function(_checkUser value)? checkUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogInImplCopyWith<$Res> {
  factory _$$LogInImplCopyWith(
          _$LogInImpl value, $Res Function(_$LogInImpl) then) =
      __$$LogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthEntity entity});
}

/// @nodoc
class __$$LogInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogInImpl>
    implements _$$LogInImplCopyWith<$Res> {
  __$$LogInImplCopyWithImpl(
      _$LogInImpl _value, $Res Function(_$LogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$LogInImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as AuthEntity,
    ));
  }
}

/// @nodoc

class _$LogInImpl implements _LogIn {
  const _$LogInImpl(this.entity);

  @override
  final AuthEntity entity;

  @override
  String toString() {
    return 'AuthEvent.logIn(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      __$$LogInImplCopyWithImpl<_$LogInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity entity) logIn,
    required TResult Function(AuthEntity entity, String role) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) resetPass,
    required TResult Function() getUser,
    required TResult Function() checkUser,
  }) {
    return logIn(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity entity)? logIn,
    TResult? Function(AuthEntity entity, String role)? signUp,
    TResult? Function()? logOut,
    TResult? Function(String email)? resetPass,
    TResult? Function()? getUser,
    TResult? Function()? checkUser,
  }) {
    return logIn?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity entity)? logIn,
    TResult Function(AuthEntity entity, String role)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? resetPass,
    TResult Function()? getUser,
    TResult Function()? checkUser,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResetPass value) resetPass,
    required TResult Function(_getUser value) getUser,
    required TResult Function(_checkUser value) checkUser,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResetPass value)? resetPass,
    TResult? Function(_getUser value)? getUser,
    TResult? Function(_checkUser value)? checkUser,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResetPass value)? resetPass,
    TResult Function(_getUser value)? getUser,
    TResult Function(_checkUser value)? checkUser,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _LogIn implements AuthEvent {
  const factory _LogIn(final AuthEntity entity) = _$LogInImpl;

  AuthEntity get entity;
  @JsonKey(ignore: true)
  _$$LogInImplCopyWith<_$LogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthEntity entity, String role});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? role = null,
  }) {
    return _then(_$SignUpImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as AuthEntity,
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(this.entity, this.role);

  @override
  final AuthEntity entity;
  @override
  final String role;

  @override
  String toString() {
    return 'AuthEvent.signUp(entity: $entity, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity entity) logIn,
    required TResult Function(AuthEntity entity, String role) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) resetPass,
    required TResult Function() getUser,
    required TResult Function() checkUser,
  }) {
    return signUp(entity, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity entity)? logIn,
    TResult? Function(AuthEntity entity, String role)? signUp,
    TResult? Function()? logOut,
    TResult? Function(String email)? resetPass,
    TResult? Function()? getUser,
    TResult? Function()? checkUser,
  }) {
    return signUp?.call(entity, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity entity)? logIn,
    TResult Function(AuthEntity entity, String role)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? resetPass,
    TResult Function()? getUser,
    TResult Function()? checkUser,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(entity, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResetPass value) resetPass,
    required TResult Function(_getUser value) getUser,
    required TResult Function(_checkUser value) checkUser,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResetPass value)? resetPass,
    TResult? Function(_getUser value)? getUser,
    TResult? Function(_checkUser value)? checkUser,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResetPass value)? resetPass,
    TResult Function(_getUser value)? getUser,
    TResult Function(_checkUser value)? checkUser,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp(final AuthEntity entity, final String role) =
      _$SignUpImpl;

  AuthEntity get entity;
  String get role;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  const _$LogOutImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity entity) logIn,
    required TResult Function(AuthEntity entity, String role) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) resetPass,
    required TResult Function() getUser,
    required TResult Function() checkUser,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity entity)? logIn,
    TResult? Function(AuthEntity entity, String role)? signUp,
    TResult? Function()? logOut,
    TResult? Function(String email)? resetPass,
    TResult? Function()? getUser,
    TResult? Function()? checkUser,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity entity)? logIn,
    TResult Function(AuthEntity entity, String role)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? resetPass,
    TResult Function()? getUser,
    TResult Function()? checkUser,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResetPass value) resetPass,
    required TResult Function(_getUser value) getUser,
    required TResult Function(_checkUser value) checkUser,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResetPass value)? resetPass,
    TResult? Function(_getUser value)? getUser,
    TResult? Function(_checkUser value)? checkUser,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResetPass value)? resetPass,
    TResult Function(_getUser value)? getUser,
    TResult Function(_checkUser value)? checkUser,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
abstract class _$$ResetPassImplCopyWith<$Res> {
  factory _$$ResetPassImplCopyWith(
          _$ResetPassImpl value, $Res Function(_$ResetPassImpl) then) =
      __$$ResetPassImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPassImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPassImpl>
    implements _$$ResetPassImplCopyWith<$Res> {
  __$$ResetPassImplCopyWithImpl(
      _$ResetPassImpl _value, $Res Function(_$ResetPassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPassImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPassImpl implements _ResetPass {
  const _$ResetPassImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPass(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPassImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPassImplCopyWith<_$ResetPassImpl> get copyWith =>
      __$$ResetPassImplCopyWithImpl<_$ResetPassImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity entity) logIn,
    required TResult Function(AuthEntity entity, String role) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) resetPass,
    required TResult Function() getUser,
    required TResult Function() checkUser,
  }) {
    return resetPass(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity entity)? logIn,
    TResult? Function(AuthEntity entity, String role)? signUp,
    TResult? Function()? logOut,
    TResult? Function(String email)? resetPass,
    TResult? Function()? getUser,
    TResult? Function()? checkUser,
  }) {
    return resetPass?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity entity)? logIn,
    TResult Function(AuthEntity entity, String role)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? resetPass,
    TResult Function()? getUser,
    TResult Function()? checkUser,
    required TResult orElse(),
  }) {
    if (resetPass != null) {
      return resetPass(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResetPass value) resetPass,
    required TResult Function(_getUser value) getUser,
    required TResult Function(_checkUser value) checkUser,
  }) {
    return resetPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResetPass value)? resetPass,
    TResult? Function(_getUser value)? getUser,
    TResult? Function(_checkUser value)? checkUser,
  }) {
    return resetPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResetPass value)? resetPass,
    TResult Function(_getUser value)? getUser,
    TResult Function(_checkUser value)? checkUser,
    required TResult orElse(),
  }) {
    if (resetPass != null) {
      return resetPass(this);
    }
    return orElse();
  }
}

abstract class _ResetPass implements AuthEvent {
  const factory _ResetPass(final String email) = _$ResetPassImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$ResetPassImplCopyWith<_$ResetPassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getUserImplCopyWith<$Res> {
  factory _$$getUserImplCopyWith(
          _$getUserImpl value, $Res Function(_$getUserImpl) then) =
      __$$getUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$getUserImpl>
    implements _$$getUserImplCopyWith<$Res> {
  __$$getUserImplCopyWithImpl(
      _$getUserImpl _value, $Res Function(_$getUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getUserImpl implements _getUser {
  const _$getUserImpl();

  @override
  String toString() {
    return 'AuthEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity entity) logIn,
    required TResult Function(AuthEntity entity, String role) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) resetPass,
    required TResult Function() getUser,
    required TResult Function() checkUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity entity)? logIn,
    TResult? Function(AuthEntity entity, String role)? signUp,
    TResult? Function()? logOut,
    TResult? Function(String email)? resetPass,
    TResult? Function()? getUser,
    TResult? Function()? checkUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity entity)? logIn,
    TResult Function(AuthEntity entity, String role)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? resetPass,
    TResult Function()? getUser,
    TResult Function()? checkUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResetPass value) resetPass,
    required TResult Function(_getUser value) getUser,
    required TResult Function(_checkUser value) checkUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResetPass value)? resetPass,
    TResult? Function(_getUser value)? getUser,
    TResult? Function(_checkUser value)? checkUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResetPass value)? resetPass,
    TResult Function(_getUser value)? getUser,
    TResult Function(_checkUser value)? checkUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _getUser implements AuthEvent {
  const factory _getUser() = _$getUserImpl;
}

/// @nodoc
abstract class _$$checkUserImplCopyWith<$Res> {
  factory _$$checkUserImplCopyWith(
          _$checkUserImpl value, $Res Function(_$checkUserImpl) then) =
      __$$checkUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$checkUserImpl>
    implements _$$checkUserImplCopyWith<$Res> {
  __$$checkUserImplCopyWithImpl(
      _$checkUserImpl _value, $Res Function(_$checkUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkUserImpl implements _checkUser {
  const _$checkUserImpl();

  @override
  String toString() {
    return 'AuthEvent.checkUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthEntity entity) logIn,
    required TResult Function(AuthEntity entity, String role) signUp,
    required TResult Function() logOut,
    required TResult Function(String email) resetPass,
    required TResult Function() getUser,
    required TResult Function() checkUser,
  }) {
    return checkUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthEntity entity)? logIn,
    TResult? Function(AuthEntity entity, String role)? signUp,
    TResult? Function()? logOut,
    TResult? Function(String email)? resetPass,
    TResult? Function()? getUser,
    TResult? Function()? checkUser,
  }) {
    return checkUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthEntity entity)? logIn,
    TResult Function(AuthEntity entity, String role)? signUp,
    TResult Function()? logOut,
    TResult Function(String email)? resetPass,
    TResult Function()? getUser,
    TResult Function()? checkUser,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LogIn value) logIn,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_LogOut value) logOut,
    required TResult Function(_ResetPass value) resetPass,
    required TResult Function(_getUser value) getUser,
    required TResult Function(_checkUser value) checkUser,
  }) {
    return checkUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LogIn value)? logIn,
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_LogOut value)? logOut,
    TResult? Function(_ResetPass value)? resetPass,
    TResult? Function(_getUser value)? getUser,
    TResult? Function(_checkUser value)? checkUser,
  }) {
    return checkUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LogIn value)? logIn,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_LogOut value)? logOut,
    TResult Function(_ResetPass value)? resetPass,
    TResult Function(_getUser value)? getUser,
    TResult Function(_checkUser value)? checkUser,
    required TResult orElse(),
  }) {
    if (checkUser != null) {
      return checkUser(this);
    }
    return orElse();
  }
}

abstract class _checkUser implements AuthEvent {
  const factory _checkUser() = _$checkUserImpl;
}

/// @nodoc
mixin _$AuthState {
  Status get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({Status status, String? message, User? user});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String? message, User? user});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? user = freezed,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl({this.status = Status.Initial, this.message, this.user});

  @override
  @JsonKey()
  final Status status;
  @override
  final String? message;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState(status: $status, message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final Status status,
      final String? message,
      final User? user}) = _$AuthStateImpl;

  @override
  Status get status;
  @override
  String? get message;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
