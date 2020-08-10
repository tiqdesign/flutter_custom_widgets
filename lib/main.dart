import 'package:flutter/material.dart';
import 'package:flutter_components/components/appbar.dart';
import 'package:flutter_components/components/card.dart';
import 'package:flutter_components/components/chip.dart';
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
        backgroundColor: Colors.grey[200],
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          color: Colors.amber[200],
          shadowColor: Colors.amber[600],
          icon: Icon(Icons.filter_list, size: 30, color: Colors.black,),
          height: 60.0,
          child: Image.asset('assets/images/youtube.png',height: 50.0,),
          photo: 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1952&q=80',
        ),
        body: Center(
          child: CustomSearchBar(
            color: Color(0xff6E698F),
            onPressed: (){

            },
          )),
      ),
    );
  }
}
