import 'package:armchair_world_travel/authentication/views/splash_screen.dart';
import 'package:armchair_world_travel/constants/breakpoints.dart';
import 'package:armchair_world_travel/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final tabs = [
  "맛집",
  "쇼핑",
  "액티비티",
  "관광지",
  "숙소",
  "불멍",
  "호캉스",
];

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

void _onPressLogout(BuildContext context) {
  context.goNamed(SplashScreen.routeName);
}

class _TravelScreenState extends State<TravelScreen> {
  // 기본 겁색어 설정
  final TextEditingController _textEditingController =
      TextEditingController(text: "어느 나라를 여행하고 싶은신가요?");
  void _onSearchChanged(String value) {
    print("입력내용 받기 $value");
  }

  void _onSearchSubmitted(String value) {
    print("검색하기 $value");
  }

  //컨트롤러 사용할 때에는 dispose를 함께 써주어야함. 메모리누수방지 앱성능/자원관리
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 1,
          title: Container(
            constraints: const BoxConstraints(
              maxWidth: Breakpoints.sm,
            ),
            child: CupertinoSearchTextField(
              controller: _textEditingController,
              onChanged: _onSearchChanged,
              onSubmitted: _onSearchSubmitted,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          bottom: TabBar(
            onTap: (value) => FocusScope.of(context).unfocus(),
            labelColor: Colors.black,

            splashFactory: NoSplash.splashFactory, //터치 효과
            padding: const EdgeInsets.symmetric(horizontal: Sizes.size16),
            isScrollable: true,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: Sizes.size16,
            ),

            indicatorColor: Theme.of(context).tabBarTheme.indicatorColor,
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
