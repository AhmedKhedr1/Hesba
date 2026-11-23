import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hesba/features/Auth/data/datasources/firebase_auth_service.dart';
import 'package:hesba/features/Auth/data/repos/auth_repo_impl.dart';
import 'package:hesba/features/Auth/domain/entites/user_entity.dart';
import 'package:hesba/features/Auth/domain/repos/auth_repo.dart';

final firebaseAuthServiceProvider = Provider<FirebaseAuthService>(
  (ref) => FirebaseAuthService(),
);

final authRepoProvider = Provider<AuthRepo>(
  (ref) => AuthRepoImpl(service: ref.watch(firebaseAuthServiceProvider)),
);
final authStateProvider = StreamProvider<UserEntity?>(
  (ref) => ref.watch(authRepoProvider).authStateChanges(),
);
