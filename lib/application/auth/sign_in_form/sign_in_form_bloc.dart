import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:ddd_course/domain/auth/auth_failure.dart';
import 'package:ddd_course/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ddd_course/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(null);
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccess: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performFunctionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performFunctionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          authFailureOrSuccess: none(),
          isSubmitting: true,
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          authFailureOrSuccess: some(failureOrSuccess),
          isSubmitting: false,
        );
      },
    );
  }

  Stream<SignInFormState> _performFunctionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        authFailureOrSuccess: none(),
        isSubmitting: true,
      );
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }
    yield state.copyWith(
      authFailureOrSuccess: optionOf(failureOrSuccess),
      isSubmitting: false,
      shownErrorMessages: true,
    );
  }
}
