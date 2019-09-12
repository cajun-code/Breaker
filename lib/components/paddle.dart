import 'dart:ui';
import 'package:breaker/breaker.dart';
import 'package:flame/sprite.dart';


class Paddle{
  
  Rect paddleRect;
  double width = 100;
  double height = 30;
  final Breaker game;
  final Sprite paddleSprite = Sprite('paddleRed.png');
  Paddle(this.game, double x, double y){
    paddleRect = Rect.fromLTWH(x, y, width, height);
  }
  
  void render(Canvas canvas){
    paddleSprite.renderRect(canvas, paddleRect);
  }

  void update(double t){}
}