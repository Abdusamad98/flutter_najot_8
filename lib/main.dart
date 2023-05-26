import 'package:flutter/material.dart';
import 'package:flutter_najot_8/utils/app_colors.dart';
import 'package:flutter_najot_8/utils/app_images.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                height: 0.45 * MediaQuery.of(context).size.height,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              "Let’s \nget started",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Sora",
                fontSize: 48,
                fontWeight: FontWeight.w600,
              ),
            ),
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
          _getMyButton(buttonText: "Log in", btnColor: AppColors.C_FFCA42),
          const SizedBox(height: 16),
          _getMyButton(buttonText: "Sign up", btnColor: AppColors.C_D5E7D4),
        ],
      ),
    );
  }

  Widget _getMyButton({
    required String buttonText,
    required Color btnColor,
  }) {
    return GestureDetector(
      onTap: () {
        print("AAA");
      },
      child: Container(
        height: 50,
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
