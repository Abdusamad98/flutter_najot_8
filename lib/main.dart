import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    debugPrint("SCREEN HEIGHT: $screenHeight and SCREEN WIDTH: $screenWidth");
    return Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFE5E5E5),
          title: const Text(
            "Profile Screen",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.more_vert),
          //     onPressed: () {
          //     },
          //   ),
          //
          // ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 42),
            const Icon(
              Icons.person_pin,
              size: 72,
              color: Colors.red,
            ),
            const SizedBox(height: 21),
            const Text(
              "Itunuoluwa Abidoye",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF181D27),
              ),
            ),
            const Text(
              "Itunuoluwa@petra.africa",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFFABABAB),
              ),
            ),
            const SizedBox(height: 40),
            _getMyContainer(title: "What’s your first name?"),
            _myDivider(),
            const SizedBox(height: 20),
            _getMyContainer(title: "And your last name?"),
            _myDivider(),
            const SizedBox(height: 20),
            _getMyContainer(title: "Phone number", type: 2),
            _myDivider(),
            const SizedBox(height: 20),
            _getMyContainer(
              title: "Phone number",
              type: 3,
              iconData: Icons.expand_more,
            ),
            _myDivider(),
            const SizedBox(height: 20),
            _getMyContainer(
                title: "Phone number",
                type: 3,
                iconData: Icons.calendar_month_rounded),
            _myDivider(),
            const SizedBox(height: 34),
            ElevatedButton(onPressed: () {}, child: const Text("Update Profile"))
          ],
        )
        // Container(
        //   height: 300,
        //   width: 300,
        //   padding: EdgeInsets.all(16),
        //   margin: EdgeInsets.all(16),
        //   decoration: BoxDecoration(
        //     color: Colors.red,
        //     borderRadius: BorderRadius.all(Radius.circular(16)),
        //   ),
        //   child: Center(
        //     child: Text(
        //       "Itunuoluwa Abidoye",
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //           fontSize: 16,
        //           fontWeight: FontWeight.w700,
        //           color: Color(0xFF181D27),
        //           shadows: []),
        //     ),
        //   ),
        // ),
        );
  }

  // 1 bolsa oddiy text
  // 2 bolsa bayroqli text
  // 3 bols iconli text

  Widget _getMyContainer({
    required String title,
    int type = 1,
    IconData? iconData,
  }) {
    return Container(
        width: double.infinity,
        height: 54,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 12,
          //     spreadRadius: 10,
          //     offset: const Offset(0, 0),
          //     color: Colors.grey.shade300,
          //   ),
          // ],
        ),
        child: Row(
          mainAxisAlignment: type == 3
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            if (type == 2)
              const Icon(
                Icons.flag_rounded,
                color: Colors.green,
              ),
            if (type == 2) const VerticalDivider(),
            Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFF555555),
              ),
            ),
            if (type == 3) Icon(iconData),
          ],
        ));
  }

  Widget _myDivider() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: 1,
        color: Colors.grey,
      );
}

// MaterialApp
// Container
// Icon
// AppBar
// SizedBox
// Text
// Column
// Row
// Divider
// VerticalDivider
// EdgeInsets
// BoxDecoration

