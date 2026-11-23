import 'package:dartz/dartz.dart';
import 'package:hesba/Core/errors/exceptions.dart';
import 'package:hesba/Core/errors/failures.dart';
import 'package:hesba/features/Auth/data/datasources/firebase_auth_service.dart';
import 'package:hesba/features/Auth/data/models/user_model.dart';
import 'package:hesba/features/Auth/domain/entites/user_entity.dart';
import 'package:hesba/features/Auth/domain/repos/auth_repo.dart';
import 'package:hesba/generated/l10n.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthService _service;

  new({required this._service});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final user = await _service.createUserWithEmailAndPassword(
        email: email,
        password: password,
        name: name,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (_) {
      return left(ServerFailure(S.current.unknownError));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _service.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (_) {
      return left(ServerFailure(S.current.unknownError));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      final user = await _service.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user));
    } on CancelledException {
      return left(CancelledFailure(S.current.googleSignInCancelled));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (_) {
      return left(ServerFailure(S.current.unknownError));
    }
  }

  @override
  Stream<UserEntity?> authStateChanges() => _service.authStateChanges().map(
    (user) => user == null ? null : UserModel.fromFirebaseUser(user),
  );

@override
Future<Either<Failure, Unit>> signOut() async {
  try {
    await _service.signOut();
    return right(unit);
  } catch (_) {
    return left(ServerFailure(S.current.unknownError));
  }
}
}
