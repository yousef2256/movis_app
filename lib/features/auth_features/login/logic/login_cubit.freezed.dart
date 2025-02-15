// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String massage) filyer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String massage)? filyer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool showPassword)? showPassword,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String massage)? filyer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Loading value) loading,
    required TResult Function(success value) success,
    required TResult Function(filyer value) filyer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Loading value)? loading,
    TResult? Function(success value)? success,
    TResult? Function(filyer value)? filyer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Loading value)? loading,
    TResult Function(success value)? success,
    TResult Function(filyer value)? filyer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String massage) filyer,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String massage)? filyer,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool showPassword)? showPassword,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String massage)? filyer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Loading value) loading,
    required TResult Function(success value) success,
    required TResult Function(filyer value) filyer,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Loading value)? loading,
    TResult? Function(success value)? success,
    TResult? Function(filyer value)? filyer,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Loading value)? loading,
    TResult Function(success value)? success,
    TResult Function(filyer value)? filyer,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ShowPasswordImplCopyWith<$Res> {
  factory _$$ShowPasswordImplCopyWith(
          _$ShowPasswordImpl value, $Res Function(_$ShowPasswordImpl) then) =
      __$$ShowPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showPassword});
}

/// @nodoc
class __$$ShowPasswordImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ShowPasswordImpl>
    implements _$$ShowPasswordImplCopyWith<$Res> {
  __$$ShowPasswordImplCopyWithImpl(
      _$ShowPasswordImpl _value, $Res Function(_$ShowPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showPassword = null,
  }) {
    return _then(_$ShowPasswordImpl(
      null == showPassword
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowPasswordImpl implements ShowPassword {
  const _$ShowPasswordImpl(this.showPassword);

  @override
  final bool showPassword;

  @override
  String toString() {
    return 'LoginState.showPassword(showPassword: $showPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPasswordImpl &&
            (identical(other.showPassword, showPassword) ||
                other.showPassword == showPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showPassword);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowPasswordImplCopyWith<_$ShowPasswordImpl> get copyWith =>
      __$$ShowPasswordImplCopyWithImpl<_$ShowPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String massage) filyer,
  }) {
    return showPassword(this.showPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String massage)? filyer,
  }) {
    return showPassword?.call(this.showPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool showPassword)? showPassword,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String massage)? filyer,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this.showPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Loading value) loading,
    required TResult Function(success value) success,
    required TResult Function(filyer value) filyer,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Loading value)? loading,
    TResult? Function(success value)? success,
    TResult? Function(filyer value)? filyer,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Loading value)? loading,
    TResult Function(success value)? success,
    TResult Function(filyer value)? filyer,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements LoginState {
  const factory ShowPassword(final bool showPassword) = _$ShowPasswordImpl;

  bool get showPassword;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowPasswordImplCopyWith<_$ShowPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String massage) filyer,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String massage)? filyer,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool showPassword)? showPassword,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String massage)? filyer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Loading value) loading,
    required TResult Function(success value) success,
    required TResult Function(filyer value) filyer,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Loading value)? loading,
    TResult? Function(success value)? success,
    TResult? Function(filyer value)? filyer,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Loading value)? loading,
    TResult Function(success value)? success,
    TResult Function(filyer value)? filyer,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements LoginState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$successImpl implements success {
  const _$successImpl();

  @override
  String toString() {
    return 'LoginState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$successImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String massage) filyer,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String massage)? filyer,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool showPassword)? showPassword,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String massage)? filyer,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Loading value) loading,
    required TResult Function(success value) success,
    required TResult Function(filyer value) filyer,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Loading value)? loading,
    TResult? Function(success value)? success,
    TResult? Function(filyer value)? filyer,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Loading value)? loading,
    TResult Function(success value)? success,
    TResult Function(filyer value)? filyer,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class success implements LoginState {
  const factory success() = _$successImpl;
}

/// @nodoc
abstract class _$$filyerImplCopyWith<$Res> {
  factory _$$filyerImplCopyWith(
          _$filyerImpl value, $Res Function(_$filyerImpl) then) =
      __$$filyerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String massage});
}

/// @nodoc
class __$$filyerImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$filyerImpl>
    implements _$$filyerImplCopyWith<$Res> {
  __$$filyerImplCopyWithImpl(
      _$filyerImpl _value, $Res Function(_$filyerImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? massage = null,
  }) {
    return _then(_$filyerImpl(
      null == massage
          ? _value.massage
          : massage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$filyerImpl implements filyer {
  const _$filyerImpl(this.massage);

  @override
  final String massage;

  @override
  String toString() {
    return 'LoginState.filyer(massage: $massage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$filyerImpl &&
            (identical(other.massage, massage) || other.massage == massage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, massage);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$filyerImplCopyWith<_$filyerImpl> get copyWith =>
      __$$filyerImplCopyWithImpl<_$filyerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool showPassword) showPassword,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String massage) filyer,
  }) {
    return filyer(massage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool showPassword)? showPassword,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String massage)? filyer,
  }) {
    return filyer?.call(massage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool showPassword)? showPassword,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String massage)? filyer,
    required TResult orElse(),
  }) {
    if (filyer != null) {
      return filyer(massage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(Loading value) loading,
    required TResult Function(success value) success,
    required TResult Function(filyer value) filyer,
  }) {
    return filyer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(Loading value)? loading,
    TResult? Function(success value)? success,
    TResult? Function(filyer value)? filyer,
  }) {
    return filyer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(Loading value)? loading,
    TResult Function(success value)? success,
    TResult Function(filyer value)? filyer,
    required TResult orElse(),
  }) {
    if (filyer != null) {
      return filyer(this);
    }
    return orElse();
  }
}

abstract class filyer implements LoginState {
  const factory filyer(final String massage) = _$filyerImpl;

  String get massage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$filyerImplCopyWith<_$filyerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
