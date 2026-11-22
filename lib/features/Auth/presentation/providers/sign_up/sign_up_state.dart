import 'package:hesba/features/Auth/domain/entites/user_entity.dart';

sealed class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {
  final UserEntity user;

  new({required this.user});
}

class SignUpFailure extends SignUpState {
  final String errMessage; 

  new({required this.errMessage});
}
