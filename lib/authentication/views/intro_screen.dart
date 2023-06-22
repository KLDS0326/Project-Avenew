import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/gaps.dart';
import '../../constants/sizes.dart';

class IntroScreen extends StatelessWidget {
  static String routeUrl = "/intro";
  static String routeName = "intro";
  const IntroScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("환영합니다."),
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: PageView(
                controller: pageController,
                children: const [
                  Center(
                    child: Text(
                      "소개 1",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "소개 2",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "소개 3",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: Sizes.size20,
                  bottom: Sizes.size40,
                ),
                child: SmoothPageIndicator(
                    controller: pageController, // PageController
                    count: 3,
                    effect: WormEffect(
                      dotColor: Theme.of(context).splashColor,
                      activeDotColor: Theme.of(context).primaryColor,
                    ), // your preferred effect

                    onDotClicked: (index) {}),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            // ####Button 사이즈 변경해야 함!####
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                padding: const EdgeInsets.symmetric(
                  vertical: Sizes.size14,
                  horizontal: Sizes.size48 - 0.5,
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () => {},
                child: const Text(
                  "로그인",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Gaps.h10,
              CupertinoButton(
                padding: const EdgeInsets.symmetric(
                  vertical: Sizes.size14,
                  horizontal: Sizes.size40,
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () => {},
                child: const Text(
                  "회원가입",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
