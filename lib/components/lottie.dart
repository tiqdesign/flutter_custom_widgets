import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomLottie extends StatelessWidget {
  final String fileName;

  const CustomLottie({Key key, @required this.fileName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Lottie.asset('assets/lotties/$fileName.json');
  }
}
