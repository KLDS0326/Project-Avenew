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
      ],
    );
  },
);
