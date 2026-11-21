import 'package:dartz/dartz.dart';
import 'package:hesba/Core/errors/failures.dart';
import 'package:hesba/features/Auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> CreateUserWithEmailAndPassword(
    String name,
    String email,
    String password,
  );
}
