


// AnimationToolkit.dart
import 'package:flutter/material.dart';

class GetAntimations {
  // ...
  static const FloatingActionButtonAnimator floatingButtonAnimator = _FloatingButtonAnimator();
}

class _FloatingButtonAnimator extends FloatingActionButtonAnimator {
  const _FloatingButtonAnimator();

  @override
  Animation<double> getScaleAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
  }

  @override
  Animation<double> getRotationAnimation({required Animation<double> parent}) {
    return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
  }

  @override
  Offset getOffset({required Offset begin, required Offset end, required double progress}) {
    // TODO: implement getOffset
    throw UnimplementedError();
  }
}





//TODO :

class NoScalingAnimation extends FloatingActionButtonAnimator {
@override
Offset getOffset({required Offset begin, required Offset end, required double progress}) {
  return end;
}

@override
Animation<double> getRotationAnimation({required Animation<double> parent}) {
  return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
}

@override
Animation<double> getScaleAnimation({required Animation<double> parent}) {
  return Tween<double>(begin: 1.0, end: 1.0).animate(parent);
}
}