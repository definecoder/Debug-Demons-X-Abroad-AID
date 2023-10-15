import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          100.heightBox,
          "WELCOME TO ABROAD AID".text.make(),
        ],
      )),
    );
  }
}
