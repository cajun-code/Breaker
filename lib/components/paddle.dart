import 'dart:ui';
import 'package:breaker/breaker.dart';
import 'package:flame/components/component.dart';
import 'package:flame/sprite.dart';
import 'package:breaker/constants.dart';

class Paddle{
  
  Rect paddleRect;
  final Breaker game;
  final Sprite paddleSprite = Sprite('paddleRed.png');
  SpriteComponent spriteComponent;

  Paddle(this.game, double x, double y){
    spriteComponent = SpriteComponent.fromSprite(
      PADDLE_WIDTH, 
      PADDLE_HEIGHT, 
      paddleSprite
    );
    spriteComponent.x = x;
    spriteComponent.y = y;
  }
  
  void render(Canvas canvas){
    spriteComponent.render(canvas);

  }

  void update(double t){
    spriteComponent.update(t);

  }
}