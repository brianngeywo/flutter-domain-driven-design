// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'my_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MyUserTearOff {
  const _$MyUserTearOff();

// ignore: unused_element
  _MyUser call({@required UniqueId id}) {
    return _MyUser(
      id: id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyUser = _$MyUserTearOff();

/// @nodoc
mixin _$MyUser {
  UniqueId get id;

  @JsonKey(ignore: true)
  $MyUserCopyWith<MyUser> get copyWith;
}

/// @nodoc
abstract class $MyUserCopyWith<$Res> {
  factory $MyUserCopyWith(MyUser value, $Res Function(MyUser) then) =
      _$MyUserCopyWithImpl<$Res>;
  $Res call({UniqueId id});
}

/// @nodoc
class _$MyUserCopyWithImpl<$Res> implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._value, this._then);

  final MyUser _value;
  // ignore: unused_field
  final $Res Function(MyUser) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$MyUserCopyWith(_MyUser value, $Res Function(_MyUser) then) =
      __$MyUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id});
}

/// @nodoc
class __$MyUserCopyWithImpl<$Res> extends _$MyUserCopyWithImpl<$Res>
    implements _$MyUserCopyWith<$Res> {
  __$MyUserCopyWithImpl(_MyUser _value, $Res Function(_MyUser) _then)
      : super(_value, (v) => _then(v as _MyUser));

  @override
  _MyUser get _value => super._value as _MyUser;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_MyUser(
      id: id == freezed ? _value.id : id as UniqueId,
    ));
  }
}

@required

/// @nodoc
class _$_MyUser implements _MyUser {
  const _$_MyUser({@required this.id}) : assert(id != null);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'MyUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$MyUserCopyWith<_MyUser> get copyWith =>
      __$MyUserCopyWithImpl<_MyUser>(this, _$identity);
}

abstract class _MyUser implements MyUser {
  const factory _MyUser({@required UniqueId id}) = _$_MyUser;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$MyUserCopyWith<_MyUser> get copyWith;
}
