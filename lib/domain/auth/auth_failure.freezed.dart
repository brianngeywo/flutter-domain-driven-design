// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmailAndPasswordCombinationFailure
      invalidEmailAndPasswordCombinationFailure() {
    return const InvalidEmailAndPasswordCombinationFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPasswordCombinationFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPasswordCombinationFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        TResult invalidEmailAndPasswordCombinationFailure(
            InvalidEmailAndPasswordCombinationFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPasswordCombinationFailure(
        InvalidEmailAndPasswordCombinationFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc
class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPasswordCombinationFailure(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPasswordCombinationFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        TResult invalidEmailAndPasswordCombinationFailure(
            InvalidEmailAndPasswordCombinationFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPasswordCombinationFailure(
        InvalidEmailAndPasswordCombinationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPasswordCombinationFailure(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPasswordCombinationFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        TResult invalidEmailAndPasswordCombinationFailure(
            InvalidEmailAndPasswordCombinationFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPasswordCombinationFailure(
        InvalidEmailAndPasswordCombinationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc
class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPasswordCombinationFailure(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPasswordCombinationFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        TResult invalidEmailAndPasswordCombinationFailure(
            InvalidEmailAndPasswordCombinationFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPasswordCombinationFailure(
        InvalidEmailAndPasswordCombinationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinationFailureCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationFailureCopyWith(
          InvalidEmailAndPasswordCombinationFailure value,
          $Res Function(InvalidEmailAndPasswordCombinationFailure) then) =
      _$InvalidEmailAndPasswordCombinationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationFailureCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationFailureCopyWithImpl(
      InvalidEmailAndPasswordCombinationFailure _value,
      $Res Function(InvalidEmailAndPasswordCombinationFailure) _then)
      : super(_value,
            (v) => _then(v as InvalidEmailAndPasswordCombinationFailure));

  @override
  InvalidEmailAndPasswordCombinationFailure get _value =>
      super._value as InvalidEmailAndPasswordCombinationFailure;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationFailure
    implements InvalidEmailAndPasswordCombinationFailure {
  const _$InvalidEmailAndPasswordCombinationFailure();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombinationFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombinationFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPasswordCombinationFailure(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return invalidEmailAndPasswordCombinationFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPasswordCombinationFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombinationFailure != null) {
      return invalidEmailAndPasswordCombinationFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        TResult invalidEmailAndPasswordCombinationFailure(
            InvalidEmailAndPasswordCombinationFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPasswordCombinationFailure != null);
    return invalidEmailAndPasswordCombinationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPasswordCombinationFailure(
        InvalidEmailAndPasswordCombinationFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombinationFailure != null) {
      return invalidEmailAndPasswordCombinationFailure(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombinationFailure
    implements AuthFailure {
  const factory InvalidEmailAndPasswordCombinationFailure() =
      _$InvalidEmailAndPasswordCombinationFailure;
}
