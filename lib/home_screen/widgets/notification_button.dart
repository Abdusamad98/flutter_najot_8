import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 32,
      child: Stack(
        children: [
          const Icon(
            Icons.notification_important,
            size: 32,
            color: Colors.black,
          ),
          Positioned(
            top: 0,
            right: 5,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
