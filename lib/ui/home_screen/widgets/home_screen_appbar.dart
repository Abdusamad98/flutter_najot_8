import 'package:flutter/material.dart';

import '../../../utils/my_colors.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSize{
  const HomeScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MyColors.C_EDF8FF,
      title: const Text(
        "Leaderboard",
        style: TextStyle(
            fontFamily: "AeonikTRIAL",
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color: MyColors.C_21242D),
      ),
      elevation: 0,
      centerTitle: true,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(double.infinity, 56);
}
