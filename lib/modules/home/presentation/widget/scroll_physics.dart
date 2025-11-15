import 'package:flutter/material.dart';

class SlowScrollPhysics extends ScrollPhysics {
  const SlowScrollPhysics({ScrollPhysics? parent}) : super(parent: parent);

  @override
  SlowScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return SlowScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    return offset * 0.7;
  }
}
