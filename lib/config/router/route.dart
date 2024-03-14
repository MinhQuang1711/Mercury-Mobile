import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/feature/presentations/ui/login/login.dart';
import 'package:mercury/feature/presentations/ui/logo/logo_screen.dart';
import 'package:mercury/feature/presentations/ui/splash/splash.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppPath.initLocation,
    routes: [
      GoRoute(
        path: AppPath.initLocation,
        builder: (context, state) => const LogoScreen(),
      ),
      GoRoute(
        path: AppPath.login,
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        path: AppPath.splash,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
