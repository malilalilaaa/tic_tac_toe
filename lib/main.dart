import 'package:flutter/material.dart';
import 'package:tic_tac_toe/screens/create_room_scree.dart';
import 'package:tic_tac_toe/screens/join_room_screen.dart';
import 'package:tic_tac_toe/screens/menu.dart';
import 'package:tic_tac_toe/utils/Palletes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgcolor),
      routes: {
        MainPage.routeName: (context) => const MainPage(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => CreateRoomScreen(),
      },
      initialRoute: MainPage.routeName,
    );
  }
}
