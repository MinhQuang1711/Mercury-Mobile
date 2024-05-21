import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/ui/ingredient/create/create.dart';
import 'package:mercury/feature/presentations/ui/ingredient/detail/detail.dart';
import 'package:mercury/feature/presentations/ui/ingredient/update/update_ingredient.dart';
import 'package:mercury/feature/presentations/ui/login/login.dart';
import 'package:mercury/feature/presentations/ui/logo/logo_screen.dart';
import 'package:mercury/feature/presentations/ui/sale_product/create/create.dart';
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
      GoRoute(
        path: AppPath.createIngredient,
        builder: (context, state) => const CreateIngredientScreen(),
      ),
      GoRoute(
        path: AppPath.detailIngredient,
        builder: (context, state) =>
            DetailIngredientScreen(ingredient: state.extra as Ingredient),
      ),
      GoRoute(
        path: AppPath.updateIngredient,
        builder: (context, state) =>
            UpdateIngredientScreen(ingredient: state.extra as Ingredient),
      ),
      GoRoute(
        path: AppPath.createProduct,
        builder: (context, state) => const CreateProductScreen(),
      ),
    ],
  );
}
