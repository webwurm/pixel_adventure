import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:pixel_adventure/pixel_adventure.dart';

class Checkpoint extends SpriteAnimationComponent
    with HasGameRef<PixelAdventure> {
  Checkpoint({position, size})
      : super(
          position: position,
          size: size,
        );

  @override
  FutureOr<void> onLoad() {
    //debugMode = true;

    add(RectangleHitbox(
      position: Vector2(18, 40),
      size: Vector2(12, 24),
    ));

    animation = SpriteAnimation.fromFrameData(
        game.images
            .fromCache('Items/Checkpoints/Checkpoint/Checkpoint (No Flag).png'),
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.5,
          textureSize: Vector2.all(64),
        ));
    return super.onLoad();
  }
}
