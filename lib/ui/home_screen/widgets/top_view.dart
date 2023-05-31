import 'package:flutter/material.dart';
import 'package:flutter_najot_8/utils/my_colors.dart';
import 'package:flutter_najot_8/utils/my_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopView extends StatelessWidget {
  const TopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: Text(
            "Find Your Favorite Food",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(width: 24),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 17,
                  spreadRadius: 17,
                  color: Colors.grey.shade200,
                )
              ]),
          child: Center(child: SvgPicture.asset(MyIcons.notification)),
        )
      ],
    );
  }
}
