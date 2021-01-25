import 'package:flutter/material.dart';
import 'package:flutter_components/login.dart';
import 'package:flutter_components/mainStack.dart';
import 'package:flutter_components/sandbox_screen.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mürekkep',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber[600],
        primaryColor: Colors.amber[600],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainStack(),
    );
  }
}
