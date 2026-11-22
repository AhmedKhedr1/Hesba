// ignore_for_file: empty_catches

import 'package:firebase_auth/firebase_auth.dart';
import 'package:hesba/Core/errors/exceptions.dart';
import 'package:hesba/Core/errors/failures.dart';
import 'package:hesba/generated/l10n.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      try {
        await credential.user!.updateDisplayName(name);
        await credential.user!.reload();
      } on Exception {}
      return _auth.currentUser!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: S.current.weakPassword);
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: S.current.emailAlreadyInUse);
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: S.current.networkRequestFailed);
      }
      throw CustomException(message: S.current.unknownError);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw CustomException(message: S.current.userNotFound);
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: S.current.wrongPassword);
      }
      throw CustomException(message: S.current.unknownError);
    } catch (e) {
      throw ServerFailure(e.toString());
    }
  }
}
