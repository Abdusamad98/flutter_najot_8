import 'package:flutter/material.dart';
import 'package:flutter_najot_8/utils/my_colors.dart';
import 'package:flutter_najot_8/utils/my_icons.dart';

class FoodItem extends StatelessWidget {
  const FoodItem(
      {Key? key,
      required this.iconPath,
      required this.title,
      required this.subTitle,
      required this.trailing})
      : super(key: key);

  final String iconPath;
  final String title;
  final String subTitle;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 2,
                spreadRadius: 5,
                offset: Offset(0, 4))
          ]),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
              color: MyColors.C_09051C,
              fontSize: 17,
              fontWeight: FontWeight.w700),
        ),
        trailing: Text(
          trailing,
          style: TextStyle(
              color: MyColors.C_F9A84D,
              fontSize: 20,
              fontWeight: FontWeight.w900),
        ),
        subtitle:
            Padding(padding: EdgeInsets.only(top: 4), child: Text(subTitle)),
        leading: Image.asset(
          MyIcons.food,
          width: 64,
          height: 64,
        ),
      ),
    );
  }
}
