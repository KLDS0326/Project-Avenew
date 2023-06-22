import 'package:armchair_world_travel/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: ArmchairWorldTravel()));
}

class ArmchairWorldTravel extends ConsumerWidget {
  const ArmchairWorldTravel({super.key});


  @override
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
  }
}
