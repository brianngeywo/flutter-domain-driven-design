import 'package:dartz/dartz.dart';
import 'package:ddd_course/domain/core/failures.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleline(String input) {
  if (!input.contains('\n')) {
    return right(input);
  } else {
    return left(ValueFailure.multiline(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxlength,
) {
  if (input.size <= maxlength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      failedValue: input,
      max: maxlength,
    ));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneRegex = r"^(?:[+]254)?[0-9]{10}$";
  if (RegExp(phoneRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length < 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
