import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/my_colors.dart';
import '../../../utils/my_icons.dart';

class LeaderItem extends StatelessWidget {
  LeaderItem({
    Key? key,
    required this.userImage,
    required this.userName,
    required this.score,
    required this.isDown,
    required this.prefixNumber,
  }) : super(key: key);

  final String userImage;
  final String userName;
  final String score;
  final bool isDown;
  final int prefixNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 10,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                prefixNumber.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: MyColors.C_21242D,
                ),
              ),
              const SizedBox(height: 6),
              SvgPicture.asset(isDown ? MyIcons.nextUp : MyIcons.nextDown),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(46),
              ),
              child: Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    margin: const EdgeInsets.all(4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        userImage,
                        width: 44,
                        height: 44,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    userName,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    score,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: MyColors.C_28CA6C),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


