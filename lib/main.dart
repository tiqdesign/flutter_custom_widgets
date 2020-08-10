import 'package:flutter/material.dart';
import 'package:flutter_components/components/appbar.dart';
import 'package:flutter_components/components/card.dart';
import 'package:flutter_components/components/chip.dart';
import 'package:flutter_components/components/listitem.dart';
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
        backgroundColor:Color(0xff161718),
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          color: Colors.white,
          shadowColor: Colors.grey[400],
          icon: Icon(
            Icons.filter_list,
            size: 30,
            color: Colors.black,
          ),
          height: 60.0,
          child: Image.asset(
            'assets/images/youtube.png',
            height: 50.0,
          ),
          photo:
              'https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(children: [
              CustomListItem(
                color: Color(0xffC93F8D),
                title: 'Graphics Assets',
                icon: Icons.color_lens,
              ),
              CustomListItem(
                color: Color(0xff3D3270),
                title: 'Graphics Assets',
                icon: Icons.color_lens,
              ),
              CustomListItem(
                color: Color(0xff479696),
                title: 'Graphics Assets',
                icon: Icons.color_lens,
              ),
            ]),
          ),
        ),
        bottomNavigationBar: new BottomAppBar(
          color: Color(0xff161718),
          shape: CircularNotchedRectangle(),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Color(0xff73788B),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Color(0xff73788B),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(

          backgroundColor: Color(0xff0AAF51),
          child: Icon(Icons.play_arrow),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
