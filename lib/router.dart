import 'package:armchair_world_travel/authentication/views/intro_screen.dart';
import 'package:armchair_world_travel/authentication/views/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'common/main_navigation_screen.dart';

final routerProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: "/home",
      routes: [
        GoRoute(
          path: "/:tab(home|travel|settings)", // 받을 수 있는 파라미터를 제한함.
          name: MainNavigationScreen.routeName,
          builder: (context, state) {
            final tab = state.pathParameters["tab"]!;
            return MainNavigationScreen(
              tab: tab,
            );
          },
        ),
        GoRoute(
          path: SplashScreen.routeUrl,
          name: SplashScreen.routeName,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: IntroScreen.routeUrl,
          name: IntroScreen.routeName,
          builder: (context, state) => const IntroScreen(),
        ),
      ],
    );
  },
);
