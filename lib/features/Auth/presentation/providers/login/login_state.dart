import 'package:hesba/features/Auth/domain/entites/user_entity.dart';

sealed class LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {
  final UserEntity user;

  new({required this.user});
}

class LoginFailure extends LoginState {
  final String errMessage;

  new({required this.errMessage});
}

class LoginLoading extends LoginState {}
