import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:ddd_course/domain/core/failures.dart';
import 'package:ddd_course/domain/core/value_objects.dart';
import 'package:ddd_course/domain/core/value_validators.dart';
import 'package:ddd_course/domain/core/value_transformers.dart';
import 'package:kt_dart/kt.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const NoteBody._(this.value);
  static const maxLength = 2000;
  factory NoteBody(String input) {
    assert(input != null);
    return NoteBody._(
      validateMaxStringLength(
        input,
        maxLength,
      ).flatMap(
        validateStringNotEmpty,
      ),
    );
  }
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const TodoName._(this.value);
  static const maxLength = 30;
  factory TodoName(String input) {
    assert(input != null);
    return TodoName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleline),
    );
  }
}

class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0), // cream
  ];
  @override
  final Either<ValueFailure<Color>, Color> value;

  const NoteColor._(this.value);
  static const maxLength = 30;
  factory NoteColor(Color input) {
    return NoteColor._(right(makeColorOpaque(input)));
  }
}

class List20<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  const List20._(this.value);
  static const maxlength = 20;
  factory List20(KtList<T> input) {
    assert(input != null);
    return List20._(
      validateMaxListLength(input, maxlength),
    );
  }
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxlength;
  }
}
