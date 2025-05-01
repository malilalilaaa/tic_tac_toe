import 'package:flutter/material.dart';
import 'package:tic_tac_toe/responsive/responsive.dart';
import 'package:tic_tac_toe/widgets/custom_buttom.dart';
import 'package:tic_tac_toe/widgets/custom_text.dart';
import 'package:tic_tac_toe/widgets/custom_text_feild.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIDController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIDController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                shadows: [Shadow(blurRadius: 40, color: Colors.purpleAccent)],
                text: 'Join Room',
                fontsize: 50,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextFeild(
                controller: _nameController,
                hintTextLabel: "Enter Name",
              ),
              SizedBox(height: size.height * 0.03),
              CustomTextFeild(
                controller: _gameIDController,
                hintTextLabel: "Enter Game ID",
              ),
              SizedBox(height: size.height * 0.05),
              CustomButtom(onTap: () {}, text: "Join"),
            ],
          ),
        ),
      ),
    );
  }
}
