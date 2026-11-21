import 'package:hesba/features/Auth/domain/entites/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  new({required super.name, required super.email, required super.uId});

  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      uId: json['uId'],
    );
  }

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
    );
  }
  factory UserModel.fromEntity(UserEntity userEntity) {
    return UserModel(
      name: userEntity.name,
      email: userEntity.email,
      uId: userEntity.uId,
    );
  }
  toMap() {
    return {'name': name, 'email': email, 'uId': uId};
  }
}
