import 'package:flutter/material.dart';


class GlassPainter extends CustomPainter {
  final double fillPercentage;

  GlassPainter(this.fillPercentage);

  @override
  void paint(Canvas canvas, Size size) {
    Paint glassPaint = Paint()
      ..color = Colors.blueAccent.withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    Paint waterPaint = Paint()
      ..color = Colors.blueAccent.withOpacity(0.6)
      ..style = PaintingStyle.fill;

    // Draw the glass outline
    Path glassPath = Path()
      ..moveTo(size.width * 0.2, size.height * 0.9)
      ..lineTo(size.width * 0.2, size.height * 0.1)
      ..quadraticBezierTo(size.width * 0.2, size.height * 0.05,
          size.width * 0.3, size.height * 0.05)
      ..lineTo(size.width * 0.7, size.height * 0.05)
      ..quadraticBezierTo(size.width * 0.8, size.height * 0.05,
          size.width * 0.8, size.height * 0.1)
      ..lineTo(size.width * 0.8, size.height * 0.9)
      ..close();

    // Draw the water level
    double waterHeight = size.height * (1 - fillPercentage);
    Rect waterRect = Rect.fromLTWH(size.width * 0.2, waterHeight,
        size.width * 0.6, size.height * fillPercentage);

    canvas.drawPath(glassPath, glassPaint);
    canvas.drawRect(waterRect, waterPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
class AnimatedGlass extends StatefulWidget {
  final double fillPercentage;

  AnimatedGlass({required this.fillPercentage});

  @override
  _AnimatedGlassState createState() => _AnimatedGlassState();
}

class _AnimatedGlassState extends State<AnimatedGlass>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: widget.fillPercentage)
        .animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: GlassPainter(_animation.value),
      child: Container(),
    );
  }
}