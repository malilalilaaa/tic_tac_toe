import 'package:flutter/material.dart';
import 'package:tic_tac_toe/responsive/responsive.dart';
import 'package:tic_tac_toe/widgets/custom_buttom.dart';
import 'package:tic_tac_toe/widgets/custom_text.dart';
import 'package:tic_tac_toe/widgets/custom_text_feild.dart';

class CreateRoomScreen extends StatefulWidget {
  // Removed size initialization from here
  static String routeName = '/create-room';
  CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
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
                text: 'Create Room',
                fontsize: 50,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextFeild(
                controller: _nameController,
                hintTextLabel: "Enter Name",
              ),
              SizedBox(height: size.height * 0.05),
              CustomButtom(onTap: () {}, text: "Enter"),
            ],
          ),
        ),
      ),
    );
  }
}
