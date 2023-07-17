import 'package:armchair_world_travel/app/travel_main_screen.dart';
import 'package:armchair_world_travel/common/widgets/TravelButton.dart';
import 'package:armchair_world_travel/common/widgets/nav_tab.dart';

import 'package:armchair_world_travel/app/wishlist_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/gaps.dart';
import '../constants/sizes.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({
    super.key,
  });

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 1;

  void _onTap(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  void _onTravelButtonTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const TravelScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* flutter는 키보드가 나타날 떄 자동으로 body를 축소시킨다.
      이를 방지하기 위해 false를 해주면 키보드가 화면을 가리는 형태가 된다. */
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Offstage(
            //Offstage는 네비게이터의 여러 탭을 한번에 구동시킨다. 이와 같이 처리해야 다른 탭에 갔다가 와도 캐시가 유지된다.
            offstage: _selectedIndex != 0,
            child: const WishMainScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const TravelScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const Center(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 29, 161, 170),
        child: Padding(
          padding: const EdgeInsets.only(
            //top: Sizes.size0,
            bottom: Sizes.size32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                text: "WishList",
                isSelected: _selectedIndex == 0,
                icon: FontAwesomeIcons.solidHeart,

                selectedIcon: FontAwesomeIcons.solidHeart,
                selectedIndex: _selectedIndex,
                onTap: () => _onTap(
                    0), //widget을 만들어서 onTap을 required로 지정해뒀다. _onTap(0)을 실행시킴.
              ),
              Gaps.h24,
              GestureDetector(
                onTap: _onTravelButtonTap,
                child: TravelButton(
                  isSelected: _selectedIndex == 1,
                  onTap: () => _onTap(1),
                ),
              ),
              Gaps.h24,
              NavTab(
                text: "settings",
                isSelected: _selectedIndex == 2,
                icon: FontAwesomeIcons.gear,
                selectedIcon: FontAwesomeIcons.gear,
                selectedIndex: _selectedIndex,
                onTap: () => _onTap(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
