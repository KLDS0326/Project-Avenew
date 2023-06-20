import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants/sizes.dart';

class WishMainScreen extends StatefulWidget {
  const WishMainScreen({super.key});

  @override
  State<WishMainScreen> createState() => _WishMainScreenState();
}

class _WishMainScreenState extends State<WishMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "위시리스트 메인",
          style: TextStyle(fontSize: Sizes.size32),
        ),
      ),
    );
  }
}
