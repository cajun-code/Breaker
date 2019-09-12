import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'dart:ui';
import 'package:breaker/components/paddle.dart';
import 'package:flutter/gestures.dart';

class Breaker extends Game{
  Size screenSize;
  Paddle paddle;
  Breaker(){
    initialize();
  }

  void initialize() async {
    resize(await Flame.util.initialDimensions());
    double midpoint = screenSize.width /2;
    paddle = Paddle(this, midpoint - 50, screenSize.height - 100);
  }

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Colors.blueGrey;
    canvas.drawRect(bgRect, bgPaint);
    paddle.render(canvas);
  }

  @override
  void update(double t) {
    // TODO: implement update
    paddle.update(t);
  }

  void resize(Size size){
    screenSize = size;
  }

  void onTapDown(TapDownDetails td){
    
  }
}