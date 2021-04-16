import 'package:ddd_course/domain/auth/my_user.dart';
import 'package:ddd_course/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  MyUser toDomain(){
    return MyUser(id: UniqueId.fromUniqueString(uid) );
  }
}