import 'package:flutter/material.dart';
import 'package:flutter_components/components/lottie.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLottie(
            fileName: '404',
          ),
          GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text(
            'Try Again',
            style: TextStyle(
                color: Colors.blue[200],
                fontSize: 24,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          )),
        ],
      ),
    );
  }
}
