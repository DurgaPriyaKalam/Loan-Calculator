import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height /2.5;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
   // paint.color = Color.fromRGBO(0, 10, 238, 1);
    paint.color = Colors.lightBlueAccent[100];
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();
    ovalPath.moveTo(0, height);
    ovalPath.quadraticBezierTo(width * 1.2, height * 3, width * 1, height * 0.75);
    paint.color = Colors.grey[100];
    canvas.drawPath(ovalPath, paint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}