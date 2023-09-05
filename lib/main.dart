import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

void main() async {
  // Make sure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Make game fullscreen
  await Flame.device.fullScreen();
  // Make game in landscape
  await Flame.device.setLandscape();

  PixelAdventure game = PixelAdventure();
  // if we test use PixelAdventure, otherwise use game
  // this helps that during developement we don't always have to completly reload
  runApp(GameWidget(game: kDebugMode ? PixelAdventure() : game));
}
