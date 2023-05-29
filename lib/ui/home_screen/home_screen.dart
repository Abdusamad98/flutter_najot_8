import 'package:flutter/material.dart';
import 'package:flutter_najot_8/ui/home_screen/widgets/home_screen_appbar.dart';
import 'package:flutter_najot_8/ui/home_screen/widgets/leader_item.dart';
import 'package:flutter_najot_8/ui/home_screen/widgets/winners_view.dart';
import 'package:flutter_najot_8/utils/my_colors.dart';
import 'package:flutter_najot_8/utils/my_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyColors.C_EDF8FF,
      appBar: HomeScreenAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WinnersView(
                  screenWidth: width,
                  topText: "2",
                  isDown: true,
                  isCenterWidget: false,
                  image: MyIcons.leftImage,
                  title: "Jacobaa",
                  score: "98P",
                ),
                WinnersView(
                  screenWidth: width,
                  topText: "1",
                  isDown: true,
                  isCenterWidget: true,
                  image: MyIcons.centerImage,
                  title: "Jacobaa",
                  score: "100P",
                ),
                WinnersView(
                  screenWidth: width,
                  topText: "3",
                  isDown: false,
                  isCenterWidget: false,
                  image: MyIcons.leftImage,
                  title: "Roberter",
                  score: "96P",
                )
              ],
            ),
          ),
          LeaderItem(
            userImage: MyIcons.userOne,
            userName: "Deviyani",
            score: "90P",
            isDown: true,
            prefixNumber: 4,
          ),
          LeaderItem(
            userImage: MyIcons.userTwo,
            userName: "Sanderly",
            score: "90P",
            isDown: true,
            prefixNumber: 4,
          ),
          LeaderItem(
            userImage: MyIcons.unnamed,
            userName: "Sanderly",
            score: "90P",
            isDown: true,
            prefixNumber: 4,
          )
        ],
      ),
    );
  }
}
