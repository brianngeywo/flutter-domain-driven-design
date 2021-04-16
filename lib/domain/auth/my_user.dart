import 'package:ddd_course/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_user.freezed.dart';
@freezed
abstract class MyUser with _$MyUser {
  @required
  const factory MyUser({
    @required UniqueId id,
  }) = _MyUser;
}
