import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButtom({super.key, required this.onTap, required this.text});
  @override
  build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(text, style: const TextStyle(fontSize: 16)),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width / 5, 50),
          backgroundColor: Colors.purple,
          shadowColor: Colors.purpleAccent,
          elevation: 5,
        ),
      ),
    );
  }
}
