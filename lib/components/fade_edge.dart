import 'package:flutter/material.dart';

class FadeEdge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        animationsList(),
      ],
    );
  }
}

Widget animationsList() {
  return Expanded(
    child: ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.transparent, Colors.red],
        ).createShader(bounds);
      },
      child: Container(height: 200.0, width: 200.0, color: Colors.blue,),
      blendMode: BlendMode.dstATop,
    ),
  );
}
