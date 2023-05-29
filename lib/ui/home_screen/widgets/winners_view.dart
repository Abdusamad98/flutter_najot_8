import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/my_colors.dart';
import '../../../utils/my_icons.dart';

class WinnersView extends StatelessWidget {
  const WinnersView({
    Key? key,
    required this.screenWidth,
    required this.score,
    required this.title,
    required this.image,
    required this.topText,
    required this.isDown,
    required this.isCenterWidget,
  }) : super(key: key);

  final double screenWidth;
  final String topText;
  final bool isDown;
  final bool isCenterWidget;
  final String image;
  final String title;
  final String score;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          topText.toString(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: MyColors.C_21242D,
          ),
        ),
        const SizedBox(height: 4),
        isCenterWidget
            ? Image.asset(
          MyIcons.crown,
          width: 50,
          height: 33,
        )
            : SvgPicture.asset(isDown ? MyIcons.nextUp : MyIcons.nextDown),
        const SizedBox(height: 12),
        Container(
          width: screenWidth * (((isCenterWidget ? 100 : 80) / 375)),
          height: screenWidth * (((isCenterWidget ? 100 : 80) / 375)),
          margin: const EdgeInsets.all(4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              width: screenWidth * (((isCenterWidget ? 100 : 80) / 375)),
              height: screenWidth * (((isCenterWidget ? 100 : 80) / 375)),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: MyColors.C_21242D,
          ),
        ),
        Text(
          score,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: MyColors.C_FF5C5C,
          ),
        ),
        SizedBox(
          height: isCenterWidget ? screenWidth * 0.2 : 0,
        ),
      ],
    );
  }
}
