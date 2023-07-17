import 'package:armchair_world_travel/app/main_navigation_screen.dart';
import 'package:armchair_world_travel/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: ArmchairWorldTravel()));
}

class ArmchairWorldTravel extends StatelessWidget {
  const ArmchairWorldTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ArmchairWorldTravel',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        /*  bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.grey.shade900,
        ), */
        primaryColor: const Color(0xFFE9435A),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
          selectionColor: Color(0xFFE9435A),
        ),
        // 버튼 터치 시 스플래쉬 되지않도록 함.
        splashColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const MainNavigationScreen(),
    );
  }
}







/* 2023.07.09 goRouter 마이그레이션은 추후에 진행하기로 함. Navigator 1.0으로 개발진행
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(routerProvider),
      title: 'ArmchairWorldTravel',
      theme: ThemeData(
        /*우리 앱의 컬러를 지정하는 부분. 여기서 일괄로 정한 컬러들을
        * Theme.of(context).colorScheme.primary 처럼 사용할 수 있다.*/
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          primary: Colors.deepPurple,
          secondary: Colors.pink,
          surface: Colors.white, // Colors 색상으로 지정할 수도 있고
          tertiary: const Color(0xFF256223), // Color(0x색상번호)로도 가능하다.
          tertiaryContainer: const Color(0xFF25628D),
        ),
        useMaterial3: true,
      ),
    );
  } */