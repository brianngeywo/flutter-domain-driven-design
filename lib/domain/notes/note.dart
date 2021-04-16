import 'package:dartz/dartz.dart';
import 'package:ddd_course/domain/core/failures.dart';
import 'package:ddd_course/domain/core/value_objects.dart';
import 'package:ddd_course/domain/notes/todo_item.dart';
import 'package:ddd_course/domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
part 'note.freezed.dart';

@freezed
abstract class Note with _$Note {
  const Note._();
  const factory Note({
    @required UniqueId id,
    @required NoteBody body,
    @required NoteColor color,
    @required List20<TodoItem> todos,
  }) = _Note;

  factory Note.empty() => Note(
        id: UniqueId(),
        body: NoteBody(""),
        color: NoteColor(
          NoteColor.predefinedColors[0],
        ),
        todos: List20(emptyList()),
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return body.failureOrUnit
        .andThen(todos.failureOrUnit)
        .andThen(
          todos
              .getOrCrash()
              //getting the failure option from th todoitem entity
              .map((todoItem) => todoItem.failureOption)
              .filter((o) => o.isSome())
              //if we cant get the 0 element, the list is empty. in such a case its valid
              .getOrElse(0, (_) => none())
              .fold(
                () => right(unit),
                (f) => left(f),
              ),
        )
        .fold(
          (l) => some(l),
          (_) => none(),
        );
  }
}
