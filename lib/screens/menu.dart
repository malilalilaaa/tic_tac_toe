import 'package:flutter/material.dart';
import 'package:tic_tac_toe/widgets/custom_buttom.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtom(onTap: () {}, text: "Create Room"),
          const SizedBox(height: 20),
          CustomButtom(onTap: () {}, text: "Join Room"),
        ],
      ),
    );
  }
}
