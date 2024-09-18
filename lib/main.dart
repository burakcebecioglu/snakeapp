
import 'package:flutter/material.dart';
import 'model.dart';
import 'view.dart';
import 'controller.dart';

void main() {
  runApp(SnakeGame());
}

class SnakeGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late SnakeGameModel model;
  late GameController controller;

  @override
  void initState() {
    super.initState();
    model = SnakeGameModel();
    controller = GameController(model);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Score: ${model.score}', style: TextStyle(color: Colors.white, fontSize: 24)),
            Container(
              width: 300,
              height: 300,
              color: Colors.grey[800],
              child: GameView(model),
            ),
          ],
        ),
      ),
    );
  }
}
