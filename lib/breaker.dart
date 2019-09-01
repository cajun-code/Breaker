import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'dart:ui';

class Breaker extends Game{
  Size screenSize;

  @override
  void render(Canvas canvas) {
    // TODO: implement render
    Rect bgRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    Paint bgPaint = Paint();
    bgPaint.color = Colors.blueGrey;
    canvas.drawRect(bgRect, bgPaint);
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

  void resize(Size size){
    screenSize = size;
  }
}