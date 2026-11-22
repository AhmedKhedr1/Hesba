import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hesba/features/Auth/presentation/providers/auth_dependencies.dart';
import 'package:hesba/features/Auth/presentation/providers/login/login_state.dart';

final loginProvider = NotifierProvider.autoDispose<LoginNotifier, LoginState>(
  LoginNotifier.new,
);

class LoginNotifier extends Notifier<LoginState> {
  @override
  LoginState build() => LoginInitial();
  Future<void> login({required String email, required String password}) async {
    if (state is LoginLoading) return;
    state = LoginLoading();
    final result = await ref
        .read(authRepoProvider)
        .signInWithEmailAndPassword(email: email, password: password);
    state = result.fold<LoginState>(
      (failure) => LoginFailure(errMessage: failure.message),
      (user) => LoginSuccess(user: user),
    );
  }
}
