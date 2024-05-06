import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_design/config/data.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: primaryColor, boxShadow: customShadow, shape: BoxShape.circle),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomPaint(
              child: Container(),
              foregroundPainter: PieChartPainter(),
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: customShadow),
              child: const Center(
                  child: Text(
                "\$2341",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    double total = 0;
    expense.forEach((element) {
      total += element['amount'];
    });
    var startRadian = -pi / 2;

    for (int i = 0; i < expense.length; i++) {
      var currentExpense = expense[i];
      var sweepRadian = (currentExpense['amount'] / total) * (2 * pi);
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
