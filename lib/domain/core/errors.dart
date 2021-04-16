import 'package:ddd_course/domain/core/failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);

  @override
  String toString() {
    // TODO: implement toString
    const explanation = "Encountered a valueFailue at an unrecoverable point.";
    return Error.safeToString('$explanation Terminating...Failue was $valueFailure');
  }
}
