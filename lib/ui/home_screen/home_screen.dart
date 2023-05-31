import 'package:flutter/material.dart';
import 'package:flutter_najot_8/ui/home_screen/widgets/back_image.dart';
import 'package:flutter_najot_8/ui/home_screen/widgets/food_item.dart';
import 'package:flutter_najot_8/ui/home_screen/widgets/search_view.dart';
import 'package:flutter_najot_8/ui/home_screen/widgets/top_view.dart';
import 'package:flutter_najot_8/utils/my_colors.dart';
import 'package:flutter_najot_8/utils/my_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                BackImage(height: height),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        const TopView(),
                        const SizedBox(height: 18),
                        SearchView(),
                        SizedBox(height: 20),
                        SvgPicture.asset(MyIcons.clear),
                        SizedBox(height: 20),
                        Text(
                          "Popular menu",
                          style: TextStyle(
                              color: MyColors.C_09051C,
                              fontWeight: FontWeight.w700),
                        ),
                        ...List.generate(
                          3,
                          (index) => FoodItem(
                              iconPath: MyIcons.food,
                              title: "Herbal Pancake",
                              subTitle: "Warung Herbal",
                              trailing: "\$7"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getSocialWidget({
    required String image,
    required String title,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: MyColors.C_F4F4F4),
          borderRadius: BorderRadius.circular(15),
          color: MyColors.white,
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 25,
              height: 25,
            ),
            const SizedBox(width: 13),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: MyColors.C_09051C),
            )
          ],
        ),
      ),
    );
  }

  Widget getButton1() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          onLongPress: () {
            print("LONG");
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.C_53E88B,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(
                    color: Colors.green,
                    width: 1,
                  ))),
          child: const Text(
            "Login",
            style: TextStyle(color: Colors.red),
          ),
        ),
      );

  Widget getButton2() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(16),
          child: Ink(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: const Offset(0, 7),
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
                color: Colors.red,
                gradient: const LinearGradient(colors: [
                  MyColors.C_53E88B,
                  MyColors.C_15BE77,
                ])),
            child: const Center(child: Text("Login")),
          ),
        ),
      );
}
