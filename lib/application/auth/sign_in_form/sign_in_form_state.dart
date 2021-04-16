part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool isSubmitting,
    @required bool shownErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(""),
        password: Password(""),
        isSubmitting: false,
        shownErrorMessages: false,
        authFailureOrSuccess: none(),
      );
}
