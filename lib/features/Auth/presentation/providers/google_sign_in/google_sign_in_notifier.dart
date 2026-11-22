import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hesba/features/Auth/presentation/providers/auth_dependencies.dart';
import 'package:hesba/features/Auth/presentation/providers/google_sign_in/google_sign_in_state.dart';

final googleSignInProvider =
    NotifierProvider.autoDispose<GoogleSignInNotifier, GoogleSignInState>(
      GoogleSignInNotifier.new,
    );

class GoogleSignInNotifier extends Notifier<GoogleSignInState> {
  @override
  GoogleSignInState build() => GoogleSignInInitial();

  Future<void> signInWithGoogle() async {
    if (state is GoogleSignInLoading) return;
    state = GoogleSignInLoading();
    final result = await ref.read(authRepoProvider).signInWithGoogle();
    state = result.fold(
      (failure) => GoogleSignInFailure(errMessage: failure.message),
      (user) => GoogleSignInSuccess(user: user),
    );
  }
}
