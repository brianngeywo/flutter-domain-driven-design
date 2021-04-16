import 'package:ddd_course/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            children: [
              const Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "email",
                  prefixIcon: Icon(Icons.email),
                ),
                autocorrect: false,
                onChanged: (value) => context.watch<SignInFormBloc>().add(
                      SignInFormEvent.emailChanged(value),
                    ),
                validator: (_) => state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                          invalidEmail: (_) => "invalid email",
                          orElse: () => null,
                        ),
                    (r) => null),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "password",
                  prefixIcon: Icon(Icons.lock),
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context.watch<SignInFormBloc>().add(
                      SignInFormEvent.passwordChanged(value),
                    ),
                validator: (_) => state.password.value.fold(
                    (f) => f.maybeMap(
                          shortPassword: (_) => "short password",
                          orElse: () => null,
                        ),
                    (r) => null),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.watch<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed());
                      },
                      child: const Text("sign in"),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.watch<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed());
                      },
                      child: const Text("register"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  context
                      .watch<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                child: const Text("sign in with google"),
              ),
              if(state.isSubmitting) ...[
                const SizedBox(height: 8,),
                const LinearProgressIndicator()
              ]
            ],
          ),
        );
      },
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold((failure) {
            FlushbarHelper.createError(
              message: failure.map(
                cancelledByUser: (_) => 'cancelled',
                serverError: (_) => 'server error',
                emailAlreadyInUse: (_) => 'email already in use',
                invalidEmailAndPasswordCombinationFailure: (_) => 'invalid email or password',
              ),
            ).show(context);
          }, (r) => null),
        );
      },
    );
  }
}
