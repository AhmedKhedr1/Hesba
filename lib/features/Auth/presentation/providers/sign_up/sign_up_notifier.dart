import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hesba/features/Auth/presentation/providers/auth_dependencies.dart';
import 'package:hesba/features/Auth/presentation/providers/sign_up/sign_up_state.dart';

final signUpProvider =
    NotifierProvider.autoDispose<SignUpNotifier, SignUpState>(
      SignUpNotifier.new,
    );

class SignUpNotifier extends Notifier<SignUpState> {
  @override
  SignUpState build() => SignUpInitial();

  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    if (state is SignUpLoading) return;
    state = SignUpLoading();
    final result = await ref
        .read(authRepoProvider)
        .createUserWithEmailAndPassword(
          name: name,
          email: email,
          password: password,
        );
    state = result.fold<SignUpState>(
      (failure) => SignUpFailure(errMessage: failure.message),
      (user) => SignUpSuccess(user: user),
    );
  }
}
