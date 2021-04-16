import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:ddd_course/domain/core/errors.dart';
import 'package:ddd_course/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// throws [UnExpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    //id = identity same as (right) => right
    return value.fold((f) => throw UnExpectedValueError(f), id);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  String toString() => 'value: $value';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}

class UniqueId extends ValueObject<String> {
  @override
  // TODO: implement value
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(Uuid().v1()));
  }
  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(right(uniqueId));
  }
  const UniqueId._(this.value);
}
