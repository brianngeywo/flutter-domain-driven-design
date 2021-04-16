import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ddd_course/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(null);
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unAuthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unAuthenticated();
      },
    );
  }
}
