import 'package:flutter/material.dart';
import 'package:flutter_components/components/button.dart';
import 'package:flutter_components/components/chips_basic.dart';
import 'package:flutter_components/components/lottie.dart';
import 'package:flutter_components/components/profileCardMuvu.dart';
import 'components/appbar.dart';

class HomePage extends StatefulWidget {
  final Function onPressedDrawer;

  const HomePage({Key key, this.onPressedDrawer}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: false,
          appBar: buildCustomAppBar(),
          body: Center(child: buildCustomLottie()),
        ),
      ),
    );
  }



  //Widgets

  CustomMuvuProfileCard buildCustomMuvuProfileCard() => CustomMuvuProfileCard();

  Container buildChipList() {
    return Container(
      margin: EdgeInsets.only(left: 8.0),
      height: 100,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomChip(
              backgroundColor: Colors.blue[800],
              label: 'Erikli',
              avatarColor: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomChip(
              backgroundColor: Colors.red[800],
              label: 'Arçelik',
              avatarColor: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomChip(
              backgroundColor: Colors.amber[800],
              label: 'Eti',
              avatarColor: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomChip(
              backgroundColor: Colors.red[500],
              label: 'Eker',
              avatarColor: Colors.white),
        ),
      ]),
    );
  }

  CustomAppBar buildCustomAppBar() {
    return CustomAppBar(
      color: Colors.white,
      shadowColor: Colors.amber[400],
      onPressed: () {
        widget.onPressedDrawer();
      },
      icon: Icon(
        Icons.reorder,
        size: 30,
        color: Colors.black,
      ),
      height: 60.0,
      child: Image.asset(
        'assets/images/beerief.png',
        height: 45.0,
      ),
      photo:
          'https://widgetwhats.com/app/uploads/2019/11/free-profile-photo-whatsapp-4.png',
    );
  }

  SizedBox buildCustomButton() {
    return SizedBox(
      height: 80,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        CustomButtonWithIcon(
            backColor: Colors.grey[800],
            itemsColor: Colors.grey[100],
            size: 18,
            icon: Icons.favorite,
            text: 'Favorite'),
        CustomButtonWithIcon(
            backColor: Colors.amber[800],
            itemsColor: Colors.grey[100],
            icon: Icons.color_lens,
            size: 18,
            text: 'Graphic'),
        CustomButtonWithIcon(
          backColor: Colors.red[800],
          itemsColor: Colors.grey[100],
          icon: Icons.delete,
          size: 18,
          text: 'Delete',
        ),
        CustomButtonWithIcon(
            backColor: Colors.grey[800],
            itemsColor: Colors.grey[100],
            size: 18,
            icon: Icons.favorite,
            text: 'Favorite'),
        CustomButtonWithIcon(
            backColor: Colors.amber[800],
            itemsColor: Colors.grey[100],
            icon: Icons.color_lens,
            size: 18,
            text: 'Graphic'),
        CustomButtonWithIcon(
          backColor: Colors.red[800],
          itemsColor: Colors.grey[100],
          icon: Icons.delete,
          size: 18,
          text: 'Delete',
        ),
        //Custom widgets goes here!
      ]),
    );
  }

  CustomLottie buildCustomLottie() {
    return CustomLottie(
      fileName: 'plane', height: MediaQuery.of(context).size.height/2 ,
    );
  }

  Row buildBarItems() {
    return new Row(
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
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return new FloatingActionButton(
      backgroundColor: Color(0xff0AAF51),
      child: Icon(Icons.play_arrow),
      onPressed: () {},
    );
  }
}
