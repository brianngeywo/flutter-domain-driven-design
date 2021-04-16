import 'package:ddd_course/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_course/domain/auth/i_auth_facade.dart';
import 'package:ddd_course/domain/auth/my_user.dart';
import 'package:ddd_course/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:ddd_course/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    // TODO: implement registerWithEmailAndPassword
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    // TODO: implement signInWithEmailAndPassword
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr,
        password: passwordStr,
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(
            const AuthFailure.invalidEmailAndPasswordCombinationFailure());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuth = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);

  @override
  Future<Option<MyUser>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    return optionOf(firebaseUser?.toDomain());
  }
}
