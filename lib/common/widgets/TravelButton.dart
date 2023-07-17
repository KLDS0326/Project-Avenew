import 'package:flutter/material.dart';

class TravelButton extends StatelessWidget {
  const TravelButton({
    super.key,
    required this.isSelected,
    required this.onTap,
  });

  final bool isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
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
