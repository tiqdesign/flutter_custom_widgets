import 'package:flutter/material.dart';
import 'package:flutter_components/components/appbar.dart';
import 'package:flutter_components/components/card.dart';
import 'package:flutter_components/components/chip.dart';
import 'package:flutter_components/components/profilecard.dart';
import 'package:flutter_components/components/searchbox.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0D5C46),
        extendBodyBehindAppBar: false,
        appBar: CustomAppBar(
          color: Colors.white,
          shadowColor: Colors.grey[400],
          icon: Icon(Icons.filter_list, size: 30, color: Colors.black,),
          height: 60.0,
          child: Image.asset('assets/images/youtube.png',height: 50.0,),
          photo: 'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
        ),
        body: CustomProfileCard(
          imageUrl: 'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
          username: 'Samantha Martin',
        ),
      ),
    );
  }
}
