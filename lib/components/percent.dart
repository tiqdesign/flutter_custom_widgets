import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PercentIndicator extends StatefulWidget {
  final int duration;
  final Color textColor;
  final Color lineColor;
  final Color backColor;
  final double percent;
  final double radius;

  const PercentIndicator({Key key, this.duration, this.textColor, this.lineColor, this.backColor, this.percent, this.radius}) : super(key: key);

  @override
  _PercentIndicatorState createState() => _PercentIndicatorState();
}

class _PercentIndicatorState extends State<PercentIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      backgroundColor: widget.backColor,
      radius: widget.radius,
      animationDuration: widget.duration,
      circularStrokeCap: CircularStrokeCap.round,
      animation: true,
      lineWidth: 10.0,
      percent: widget.percent/100,
      center: new Text("${widget.percent}%",style: TextStyle(color: widget.textColor, fontSize: 24, fontWeight: FontWeight.bold),),
      progressColor: widget.lineColor,
    );
  }
}
