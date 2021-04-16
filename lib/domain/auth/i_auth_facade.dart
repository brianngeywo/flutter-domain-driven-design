import 'package:dartz/dartz.dart';
import 'package:ddd_course/domain/auth/auth_failure.dart';
import 'package:ddd_course/domain/auth/my_user.dart';
import 'package:ddd_course/domain/auth/value_objects.dart';
import 'package:flutter/cupertino.dart';

abstract class IAuthFacade {
  Future<Option<MyUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signOut();
}
