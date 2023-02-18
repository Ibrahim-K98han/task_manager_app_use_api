import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScreenBackground extends StatelessWidget {
  final Widget widget;
  const ScreenBackground({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        SvgPicture.asset(
          'images/background.svg',
          fit: BoxFit.cover,
          width: screenSize.width,
          height: screenSize.height,
        ),
        widget
      ],
    );
  }
}
