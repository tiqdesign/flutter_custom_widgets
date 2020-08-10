import 'package:flutter/material.dart';

class CustomChipWithGradient extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final double width;
  final double height;
  final AlignmentGeometry beginGradient;
  final AlignmentGeometry endGradient;
  final Widget textWidget;

  const CustomChipWithGradient({Key key, this.firstColor, this.secondColor, this.beginGradient, this.endGradient, this.width, this.height, this.textWidget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
            begin: beginGradient,
            end: endGradient,
            colors: [firstColor, secondColor])
      ),
      child: Center(child: textWidget),
    );
  }
}
