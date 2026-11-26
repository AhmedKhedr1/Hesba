import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hesba/Core/routes/app_routes.dart';
import 'package:hesba/features/Auth/presentation/providers/auth_dependencies.dart';
import 'package:hesba/features/Auth/presentation/views/login_view.dart';
import 'package:hesba/features/Auth/presentation/views/privacy_policy_view.dart';
import 'package:hesba/features/Auth/presentation/views/sign_up_view.dart';
import 'package:hesba/features/Auth/presentation/views/terms_and_conditions_view.dart';
import 'package:hesba/features/home/presentation/views/home_view.dart';

const Set<String> _loggedOutOnlyRoutes = {AppRoutes.login, AppRoutes.signup};

const Set<String> _publicRoutes = {
  AppRoutes.termsAndConditions,
  AppRoutes.privacyPolicyView,
};

final routerProvider = Provider<GoRouter>((ref) {
  final refresh = ValueNotifier<int>(0);
  ref.onDispose(refresh.dispose);

  // ref.listen (مش watch): عشان الـ provider ده ما يتبنيش من جديد،
  // لأن ده كان هيعمل router جديد ويرجّع المستخدم لأول التطبيق.
  ref.listen(authStateProvider, (previous, next) {
    // أول ما حالة الدخول تتحدد، شيل الـ native splash
    if (!next.isLoading) FlutterNativeSplash.remove();
    refresh.value++;
  });

  final router = GoRouter(
    initialLocation: AppRoutes.login,
    refreshListenable: refresh,
    redirect: (context, state) {
      final auth = ref.read(authStateProvider);

      // لسه بنعرف المستخدم مسجّل ولا لأ: ما تعملش redirect
      // (وإلا المستخدم المسجّل هيشوف Login للحظة)
      if (auth.isLoading) return null;

      final isLoggedIn = auth.value != null;
      final location = state.matchedLocation;

      // الصفحات العامة متاحة دايماً
      if (_publicRoutes.contains(location)) return null;

      // مش مسجّل وبيحاول يدخل صفحة محمية ← Login
      if (!isLoggedIn && !_loggedOutOnlyRoutes.contains(location)) {
        return AppRoutes.login;
      }

      // مسجّل وفي صفحة الدخول أو التسجيل ← Home
      if (isLoggedIn && _loggedOutOnlyRoutes.contains(location)) {
        return AppRoutes.homeView;
      }

      return null; // كمّل عادي
    },
    routes: [
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRoutes.signup,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: AppRoutes.termsAndConditions,
        builder: (context, state) => const TermsAndConditionsView(),
      ),
      GoRoute(
        path: AppRoutes.privacyPolicyView,
        builder: (context, state) => const PrivacyPolicyView(),
      ),
      GoRoute(
        path: AppRoutes.homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );

  ref.onDispose(router.dispose);
  return router;
});
