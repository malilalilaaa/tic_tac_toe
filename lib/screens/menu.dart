import 'package:flutter/material.dart';
import 'package:tic_tac_toe/responsive/responsive.dart';
import 'package:tic_tac_toe/screens/create_room_scree.dart';
import 'package:tic_tac_toe/screens/join_room_screen.dart';
import 'package:tic_tac_toe/widgets/custom_buttom.dart';

class MainPage extends StatelessWidget {
  static String routeName = '/menu-page';
  const MainPage({super.key});
  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtom(onTap: () => createRoom(context), text: "Create Room"),
            const SizedBox(height: 20),
            CustomButtom(onTap: () => joinRoom(context), text: "Join Room"),
          ],
        ),
      ),
    );
  }
}
