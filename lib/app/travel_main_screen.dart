import 'package:armchair_world_travel/authentication/views/splash_screen.dart';
import 'package:armchair_world_travel/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../authentication/views/intro_screen.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

void _onPressLogout(BuildContext context) {
  context.goNamed(SplashScreen.routeName);
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "여행화면",
              style: TextStyle(
                fontSize: Sizes.size32,
              ),
            ),
            CupertinoButton(
              child: const Text("로그아웃"),
              onPressed: () => _onPressLogout(context),
            ),
          ],
        ),
      ),
    );
  }
}
