import 'package:flutter/material.dart';
import 'package:flutter_najot_8/utils/app_colors.dart';
import 'package:flutter_najot_8/utils/app_images.dart';
import 'package:flutter_najot_8/utils/size_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SvgPicture.asset(
            AppImages.react,
            width: 300,
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("WIDTH:$width");
    print("HEIGHT:$height");
    return Scaffold(
      backgroundColor: AppColors.appMainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.appMainColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Spedah",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "Sora",
              ),
            ),
            const SizedBox(width: 4),
            Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.C_FFCA42),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppImages.bicycle,
                height: getHomePicsHeight(height),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              "Let’s \nget started",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Sora",
                fontSize: height > 600 ? 48 : 35.46,
                fontWeight: FontWeight.w600,
              ),
            ),
            //812 --->48
            //600 ---x
            //x =
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              "Everything start from here",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Sora",
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 24),
          _getMyButton(
            buttonText: "Log in",
            btnColor: AppColors.C_FFCA42,
            height: height,
          ),
          const SizedBox(height: 16),
          _getMyButton(
            buttonText: "Sign up",
            btnColor: AppColors.C_D5E7D4,
            height: height,
          ),
        ],
      ),
    );
  }

  Widget _getMyButton({
    required String buttonText,
    required Color btnColor,
    required double height,
  }) {
    return GestureDetector(
      onTap: () {
        print("AAA");
      },
      child: Container(
        height: height > 600 ? 50 : 35,
        margin: const EdgeInsets.symmetric(horizontal: 28),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: btnColor),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: Color(0xFF10405A),
                fontSize: 16,
                fontFamily: "Sora",
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.yellowAccent,
            ),
          )
        ],
      )),
    );
  }
}
