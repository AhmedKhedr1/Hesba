import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hesba/features/Auth/presentation/providers/auth_dependencies.dart';
import 'package:hesba/features/Auth/presentation/providers/sign_out/sign_out_state.dart';

final signOutProvider =
    NotifierProvider.autoDispose<SignOutNotifier, SignOutState>(
      SignOutNotifier.new,
    );

class SignOutNotifier extends Notifier<SignOutState> {
  @override
  SignOutState build() => SignOutInitial();

  Future<void> signOut() async {
    if (state is SignOutLoading) return;

    state = SignOutLoading();
    final result = await ref.read(authRepoProvider).signOut();
    result.fold(
      (failure) => SignOutFailure(errMessage: failure.message),
      (_) => SignOutSuccess(),
    );
  }
}
