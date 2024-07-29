import 'package:flutter/material.dart';
import 'package:lezof_auto_repair_mobile_app/constants/app_colors.dart';
class Progresso extends StatefulWidget {
  final double start;
  final double progress;
  final List<double> points;
  final Color progressColor;
  final Color backgroundColor;
  final double progressStrokeWidth;
  final StrokeCap progressStrokeCap;
  final double backgroundStrokeWidth;
  final StrokeCap backgroundStrokeCap;
  final Color pointColor;
  final Color pointInnerColor;
  final double pointRadius;
  final double pointInnerRadius;
  Progresso(
      {Key? key,
      this.start = 0.0,
      this.progress = 0.0,
      this.progressColor = Colors.blue,
      this.backgroundColor = Colors.grey,
      this.progressStrokeWidth = 10.0,
      this.backgroundStrokeWidth = 5.0,
      this.progressStrokeCap = StrokeCap.square,
      this.backgroundStrokeCap = StrokeCap.square,
      this.pointColor = Colors.blue,
      this.pointInnerColor = Colors.white,
      this.pointRadius = 7.5,
      this.pointInnerRadius = 2.5,
      this.points = const []})
      : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ProgressoState createState() => _ProgressoState();
}
class _ProgressoState extends State<Progresso> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:20.0, right: 20),
          child: CustomPaint( 
              foregroundPainter: _ProgressoPainter(
                  progress: widget.progress,
                  start: widget.start,
                  progressColor: widget.progressColor,
                  backgroundColor: widget.backgroundColor,
                  progressStrokeWidth: widget.progressStrokeWidth,
                  progressStrokeCap: widget.progressStrokeCap,
                  backgroundStrokeWidth: widget.backgroundStrokeWidth,
                  backgroundStrokeCap: widget.backgroundStrokeCap,
                  pointColor: widget.pointColor,
                  pointInnerColor: widget.pointInnerColor,
                  pointRadius: widget.pointRadius,
                  pointInnerRadius: widget.pointInnerRadius,
                  points: widget.points),
              child: const Center()),
        ),
            Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: Container(width: MediaQuery.of(context).size.width*1,
                color: white,
               child:  const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  SizedBox(width: 40,

                    child: Text(
                      textAlign: TextAlign.center,
                            "Created",
                            style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                                color: primary),
                          ),
                  ),
                         SizedBox(width: 40,
                           child: Center(
                             child: Text(textAlign: TextAlign.center,
                              "In Progress",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: primary),
                                                     ),
                           ),
                         ),
                         SizedBox(width: 40,
                           child: Center(
                             child: Text(
                              textAlign: TextAlign.center,
                              "Vehcle Ready",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: primary),
                                                     ),
                           ),
                         ),
                         SizedBox(width: 40,
                           child: Center(
                             child: Text(
                              textAlign: TextAlign.center,
                              "Payment Due",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: primary),
                                                     ),
                           ),
                         ),
                         SizedBox(width: 40,
                           child: Center(
                             child: Text(
                              textAlign: TextAlign.center,
                              "Payment Done",
                              style: TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: primary),
                                                     ),
                           ),
                         ),
                 ],
               )
                ),
            )
      ],
    );
  }
}

class _ProgressoPainter extends CustomPainter {
  final Paint _paintBackground = Paint();
  final Paint _paintProgress = Paint();
  final Paint _paintPoint = Paint();
  final Paint _paintPointCenter = Paint();
  final Color backgroundColor;
  final Color progressColor;
  final double start;
  final double progress;
  final double progressStrokeWidth;
  final StrokeCap progressStrokeCap;
  final double backgroundStrokeWidth;
  final StrokeCap backgroundStrokeCap;
  final Color pointColor;
  final Color pointInnerColor;
  final double pointRadius;
  final double pointInnerRadius;
  final List<double> points;

  _ProgressoPainter(
      {required this.start,
      required this.progress,
      required this.progressColor,
      required this.backgroundColor,
      required this.progressStrokeWidth,
      required this.progressStrokeCap,
      required this.backgroundStrokeWidth,
      required this.backgroundStrokeCap,
      required this.points,
      required this.pointColor,
      required this.pointInnerColor,
      required this.pointInnerRadius,
      required this.pointRadius}) {
    _paintBackground.color = backgroundColor;
    _paintBackground.style = PaintingStyle.stroke;
    _paintBackground.strokeCap = backgroundStrokeCap;
    _paintBackground.strokeWidth = backgroundStrokeWidth;
    _paintProgress.color = progressColor;
    _paintProgress.style = PaintingStyle.stroke;
    _paintProgress.strokeCap = progressStrokeCap;
    _paintProgress.strokeWidth = progressStrokeWidth;
    _paintPoint.color = pointColor;
    _paintPoint.style = PaintingStyle.fill;
    _paintPointCenter.color = pointInnerColor;
    _paintPointCenter.style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final startOffset = Offset(0.0, size.height / 2);
    final endOffset = Offset(size.width, size.height / 2);
    canvas.drawLine(startOffset, endOffset, _paintBackground);
    final xStart = size.width * start;
    var cappedProgress = progress;
    if (progress > 1) {
      cappedProgress = 1.0;
    }
    var xProgress = size.width * cappedProgress;
    final progressStart = Offset(xStart, size.height / 2);
    canvas.drawLine(
        progressStart, Offset(xProgress, size.height / 2), _paintProgress);
    for (var point in points) {
      var pointPos = size.width * point;
      final pointX = Offset(pointPos, size.height / 2);
      canvas.drawCircle(pointX, pointRadius, _paintPoint);
      canvas.drawCircle(pointX, pointInnerRadius, _paintPointCenter);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    final old = oldDelegate as _ProgressoPainter;
    return old.progress != progress ||
        old.start != start ||
        old.progressColor != progressColor ||
        old.backgroundColor != backgroundColor ||
        old.progressStrokeWidth != progressStrokeWidth ||
        old.backgroundStrokeWidth != backgroundStrokeWidth ||
        old.progressStrokeCap != progressStrokeCap ||
        old.backgroundStrokeCap != backgroundStrokeCap ||
        old.pointColor != pointColor ||
        old.pointInnerColor != pointInnerColor ||
        old.pointRadius != pointRadius ||
        old.pointInnerRadius != pointInnerRadius ||
        old.points != points;
  }
}