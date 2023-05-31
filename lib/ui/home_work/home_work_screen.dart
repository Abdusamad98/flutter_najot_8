import 'package:flutter/material.dart';
import 'package:flutter_najot_8/utils/my_icons.dart';

import '../../utils/my_colors.dart';

class HomeWorkScreen extends StatelessWidget {
  const HomeWorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                MyIcons.menu,
                height: height * (442 / 812),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Spacer(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * (457 / 812),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
              ),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Text(
                            '''Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.

                    Strowberry
                    Cream
                    wheat

                    Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt., Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.
                    erjhk
                    
                    rjfhekngfdkjgkfnf
                    hjedh
'''),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 24),
                      height: 50,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getButton2() => InkWell(
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
              gradient: LinearGradient(colors: [
                MyColors.C_53E88B,
                MyColors.C_15BE77,
              ])),
          child: const Center(child: Text("Login")),
        ),
      );
}
