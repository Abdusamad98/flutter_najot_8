import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text("Hello Title")),
              trailing: Text("Hello trailing"),
              subtitle: Text("Trailing"),
              leading: Icon(
                Icons.add_circle,
                size: 32,
              ),
              onTap: (){},
              style: ListTileStyle.drawer,
            )
          ],
        ),
      ),
    );
  }
}
