import 'package:flutter/material.dart';

import '../../../utils/my_icons.dart';

class BackImage extends StatelessWidget {
  const BackImage({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * (400 / 812),
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.3),
          ],
        ),
      ),
      child: Image.asset(MyIcons.pattern),
    );
  }
}
