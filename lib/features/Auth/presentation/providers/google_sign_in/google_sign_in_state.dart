import 'package:hesba/features/Auth/domain/entites/user_entity.dart';

sealed class GoogleSignInState {}

class GoogleSignInInitial extends GoogleSignInState {}

class GoogleSignInLoading extends GoogleSignInState {}

class GoogleSignInFailure extends GoogleSignInState {
  final String errMessage;

  new({required this.errMessage});
}

class GoogleSignInSuccess extends GoogleSignInState {
  final UserEntity user;

  new({required this.user});
}
