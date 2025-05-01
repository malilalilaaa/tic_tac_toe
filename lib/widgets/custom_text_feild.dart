import 'package:flutter/material.dart';
import 'package:tic_tac_toe/utils/Palletes.dart' as Pallete;

class CustomTextFeild extends StatelessWidget {
  final String hintTextLabel;
  final TextEditingController controller;
  const CustomTextFeild({
    super.key,
    required this.hintTextLabel,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.purpleAccent, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: Pallete.bgcolor,
          filled: true,
          hintText: hintTextLabel,
        ),
      ),
    );
  }
}
