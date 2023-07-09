import 'package:flutter/material.dart';

class TravelButton extends StatefulWidget {
  final bool isSelected;

  const TravelButton({
    super.key,
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
      onTapDown: onLongPressFunction,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRect(
            clipBehavior: Clip.none,
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/globe.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /*Container(
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
            */
          ),
        ],
      ),
    );
  }
}
