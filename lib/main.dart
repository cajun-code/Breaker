import 'package:flame/util.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter/services.dart';
import 'breaker.dart';

void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  Flame.images.loadAll(<String>[
    'ballBlue.png',
    'paddleRed.png',
  ]);

  //Breaker
  Breaker game = Breaker();
  runApp(game.widget);
}

