import 'package:flutter/material.dart';
import 'package:tic_tac_toe/responsive/responsive.dart';
import 'package:tic_tac_toe/screens/create_room.dart';
import 'package:tic_tac_toe/screens/join_room.dart';
import 'package:tic_tac_toe/widgets/custom_button.dart';

class MainMenu extends StatefulWidget {
  static String routName = "/main-menu";
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoom.routName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoom.routName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  onTap: () => createRoom(context), text: "Create Room"),
              const SizedBox(
                height: 20,
              ),
              CustomButton(onTap: () => joinRoom(context), text: "Join Room")
            ],
          ),
        ),
      ),
    );
  }
}
