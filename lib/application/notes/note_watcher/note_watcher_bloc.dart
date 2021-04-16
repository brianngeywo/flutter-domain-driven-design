import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ddd_course/domain/notes/note.dart';
import 'package:ddd_course/domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  NoteWatcherBloc() : super(null);

  // @override
  NoteWatcherState get initialState => const NoteWatcherState.initial();

  @override
  Stream<NoteWatcherState> mapEventToState(
    NoteWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
