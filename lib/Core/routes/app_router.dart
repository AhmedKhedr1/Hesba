import 'package:go_router/go_router.dart';
import 'package:hesba/Core/routes/app_routes.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    routes: [],
  );
}
