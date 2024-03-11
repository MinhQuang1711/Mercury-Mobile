import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/feature/ui/login/login.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppPath.initLocation,
    routes: [
      GoRoute(
        path: AppPath.initLocation,
        builder: (context, state) => const Login(),
      ),
    ],
  );
}
