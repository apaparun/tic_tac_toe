import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/provider/room_data_provider.dart';
import 'package:tic_tac_toe/screens/create_room.dart';
import 'package:tic_tac_toe/screens/game_screen.dart';
import 'package:tic_tac_toe/screens/join_room.dart';
import 'package:tic_tac_toe/utills/colors.dart';

import 'screens/main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomDataProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
        ),
        routes: {
          MainMenu.routName: (context) => const MainMenu(),
          CreateRoom.routName: (context) => const CreateRoom(),
          JoinRoom.routName: (context) => const JoinRoom(),
          GameScreen.routName: (context) => const GameScreen()
        },
        initialRoute: MainMenu.routName,
      ),
    );
  }
}
