
import 'package:flutter/material.dart';
import 'model.dart';

class GameView extends StatelessWidget {
  final SnakeGameModel model;

  GameView(this.model);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GamePainter(model),
      child: Container(),
    );
  }
}

class GamePainter extends CustomPainter {
  final SnakeGameModel model;

  GamePainter(this.model);

  @override
  void paint(Canvas canvas, Size size) {
    Paint snakePaint = Paint()..color = Colors.green;
    Paint applePaint = Paint()..color = Colors.red;

    for (var pos in model.snake) {
      canvas.drawRect(Rect.fromLTWH(pos.x * 10.0, pos.y * 10.0, 10.0, 10.0), snakePaint);
    }

    canvas.drawRect(Rect.fromLTWH(model.apple.x * 10.0, model.apple.y * 10.0, 10.0, 10.0), applePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
