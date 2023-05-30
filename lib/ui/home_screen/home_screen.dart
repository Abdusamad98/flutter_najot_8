import 'package:flutter/material.dart';
import 'package:flutter_najot_8/utils/my_colors.dart';
import 'package:flutter_najot_8/utils/my_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
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
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      MyIcons.logo,
                      height: height * (139 / 812),
                    ),
                    const Text(
                      "MasmasFood",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                          color: MyColors.C_53E88B),
                    ),
                    const Text(
                      "Deliever Favorite Food",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: height * (60 / 812),
                    ),
                    const Text(
                      "Login To Your Account",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                getSocialWidget(
                  image: MyIcons.facebook,
                  title: "Facebook",
                ),
                const SizedBox(
                  width: 21,
                ),
                getSocialWidget(
                  image: MyIcons.google,
                  title: "Google",
                ),
              ],
            ),
          ),
          Spacer(),
          getButton2(),
          const SizedBox(
            height: 21,
          ),
        ],
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
