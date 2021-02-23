import 'package:flutter/material.dart';
import 'dart:math' as math;

class Smile extends StatelessWidget {
  final isNice;

  Smile({this.isNice});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SmilePainter(isNice: isNice),
      size: Size(300, 300),
    );
  }
}

class SmilePainter extends CustomPainter {
  final isNice;

  SmilePainter({this.isNice});

  @override
  void paint(Canvas canvas, Size size) {
    // Задание точек
    // final p1 = Offset(50, 50);
    // final p2 = Offset(100, 100);
    final radius = math.min(size.width, size.height) / 2;
    final center = Offset(size.width / 2, size.height / 2);
    final eyeLeft = Offset(center.dx - radius / 3, center.dy - radius / 3);
    final eyeRight = Offset(center.dx + radius / 3, center.dy - radius / 3);

    final paint = Paint() // овал лица
      ..color = isNice ? Colors.green : Colors.red;

    final eyesPaint = Paint() // глаза и губы
      ..color = Colors.black;

    final lipsPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawCircle(center, radius, paint); // овал лица
    canvas.drawCircle(eyeLeft, 20, eyesPaint); // левый глаз
    canvas.drawCircle(eyeRight, 20, eyesPaint); // правый галз
    canvas.drawArc(
        // губы
        Rect.fromCircle(
            center: Offset(
                center.dx, center.dy + (isNice ? radius / 6 : radius / 2)),
            radius: radius / 3),
        isNice ? math.pi / 6 : 7 * math.pi / 6,
        2 * math.pi / 3,
        false,
        lipsPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
