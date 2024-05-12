import 'package:flutter/material.dart';

class DotTabIndicatior extends Decoration {
  final Color color;
  double radius;
  DotTabIndicatior({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _Dotpainter(color: color, radius: radius);
  }
}

class _Dotpainter extends BoxPainter {
  final Color color;
  double radius;
  _Dotpainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset dotOffset = Offset(
        configuration.size!.width / 2, configuration.size!.height - radius);

    canvas.drawCircle(offset + dotOffset, radius, _paint);
  }
}
