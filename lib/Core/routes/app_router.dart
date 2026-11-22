import 'package:go_router/go_router.dart';
import 'package:hesba/Core/routes/app_routes.dart';
import 'package:hesba/features/Auth/presentation/views/login_view.dart';
import 'package:hesba/features/Auth/presentation/views/privacy_policy_view.dart';
import 'package:hesba/features/Auth/presentation/views/sign_up_view.dart';
import 'package:hesba/features/Auth/presentation/views/terms_and_conditions_view.dart';
import 'package:hesba/features/home/home_view.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(path: AppRoutes.login, builder: (context, state) => LoginView()),
      GoRoute(
        path: AppRoutes.signup,
        builder: (context, state) => SignUpView(),
      ),
      GoRoute(
        path: AppRoutes.termsAndConditions,
        builder: (context, state) => TermsAndConditionsView(),
      ),
      GoRoute(
        path: AppRoutes.privacyPolicyView,
        builder: (context, state) => PrivacyPolicyView(),
      ),
      GoRoute(
        path: AppRoutes.homeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
