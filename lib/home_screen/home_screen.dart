import 'package:flutter/material.dart';
import 'package:flutter_najot_8/home_screen/widgets/notification_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: const [
          NotificationButton(
            text: "6",
          ),
          SizedBox(width: 12)
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
            height: double.infinity,
          ),
          Positioned(
              left: 20,
              bottom: 45,
              child: Container(
                height: 100,
                width: 200,
                color: Colors.orangeAccent,
              ))
        ],
      ),
    );
  }
}
