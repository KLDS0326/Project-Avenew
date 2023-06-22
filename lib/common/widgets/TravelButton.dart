import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants/sizes.dart';

class TravelButton extends StatefulWidget {
  final Function onTapFunction;
  final bool isSelected;

  const TravelButton({
    super.key,
    required this.onTapFunction,
    required this.isSelected,
  });

  @override
  State<TravelButton> createState() => _TravelButtonState();
}

class _TravelButtonState extends State<TravelButton> {
  bool _isClicked = false;

  void onLongPressFunction(TapDownDetails context) {
    setState(() {
      _isClicked = !_isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onTapFunction(context),
      onTapDown: onLongPressFunction,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          /*FIXME bottomNavi를 키우지 않고 이 버튼만 키우는 방법은..?*/
          ClipRect(
            clipBehavior: Clip.none,
            child: Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Center(
                child: Icon(
                  Icons.public,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
