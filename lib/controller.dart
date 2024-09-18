
import 'dart:async';
import 'model.dart';

class GameController {
  SnakeGameModel model;

  GameController(this.model) {
    Timer.periodic(Duration(milliseconds: 100), _update);
  }

  void _update(Timer timer) {
    model.updateSnakePosition();
    if (model.checkCollision()) {
      timer.cancel();
      // Handle game over logic here.
    }
  }

  void onKeyPress(Direction direction) {
    model.direction = direction;
  }
}
