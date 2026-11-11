import 'package:go_router/go_router.dart';
import 'package:hesba/Core/routes/app_routes.dart';
import 'package:hesba/login.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    routes: [
      GoRoute(path: AppRoutes.login, builder: (context, state) => Login()),
    ],
  );
}
