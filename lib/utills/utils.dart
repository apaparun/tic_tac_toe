import 'package:flutter/material.dart';
import 'package:tic_tac_toe/resources/game_method.dart';

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}

void showGameDialog(BuildContext context, String text) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (cont) {
        return AlertDialog(
          title: Text(text),
          actions: [
            TextButton(
                onPressed: () {
                  GameMethod().clearBoard(context);
                  Navigator.pop(context);
                },
                child: const Text('Play Again'))
          ],
        );
      });
}
