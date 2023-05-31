import 'package:flutter/material.dart';
import 'package:flutter_najot_8/utils/my_colors.dart';
import 'package:flutter_najot_8/utils/my_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 13,
          ),
          height: 50,
          decoration: BoxDecoration(
            color: MyColors.C_F9A84D.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SvgPicture.asset(MyIcons.search),
              SizedBox(width: 18),
              Text(
                "What do you want to order?",
                style: TextStyle(color: MyColors.C_DA6317, fontSize: 12),
              )
            ],
          ),
        )),
        const SizedBox(width: 10),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: MyColors.C_F9A84D.withOpacity(0.1),
          ),
          child: Center(
            child: SvgPicture.asset(MyIcons.filter),
          ),
        )
      ],
    );
  }
}
