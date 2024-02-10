import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/provider/room_data_provider.dart';

class ScoreBoard extends StatelessWidget {
  const ScoreBoard({super.key});

  @override
  Widget build(BuildContext context) {
    RoomDataProvider roomDataProvider = Provider.of<RoomDataProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                roomDataProvider.player1.nickname,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                roomDataProvider.player1.points.toInt().toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                roomDataProvider.player2.nickname,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                roomDataProvider.player1.points.toInt().toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
