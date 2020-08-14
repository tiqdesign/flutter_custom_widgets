import 'package:flutter/material.dart';
import 'package:flutter_components/components/profilecard.dart';
import 'package:flutter_components/home.dart';
import 'package:flutter_components/login.dart';

class MainStack extends StatefulWidget {


  const MainStack({Key key}) : super(key: key);
  @override
  _MainStackState createState() => _MainStackState();
}

class _MainStackState extends State<MainStack> {
  bool isOpened = false;

  void openDrawer(){
    setState(() {
      isOpened = !isOpened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber[600],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
           Container(
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width/2,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CustomProfileCard(
                   username: 'Tarık KAYA',
                   imageUrl: 'https://widgetwhats.com/app/uploads/2019/11/free-profile-photo-whatsapp-4.png',
                 ),
                 CustomTab(icon: Icons.play_arrow,pageName: "Home Page",),
                 CustomTab(icon: Icons.play_arrow,pageName: "About Page",),
                 CustomTab(icon: Icons.play_arrow,pageName: "Contact Page",),
                 CustomTab(icon: Icons.play_arrow,pageName: "Profile Page",)
               ],
             ),
           ),
            AnimatedPositioned(
                duration: Duration(milliseconds: 500),
                top: isOpened ? MediaQuery.of(context).size.height/10 : 0,
                bottom: isOpened  ? MediaQuery.of(context).size.height/10 : 0,
                left:  isOpened  ?  MediaQuery.of(context).size.width*0.6 : 0,
                right:  isOpened  ? -MediaQuery.of(context).size.width/2 : 0,
                child: LoginPage())
              //HomePage(onPressedDrawer: openDrawer,))
          ],
        ),
      ),
    );
  }

}

class CustomTab extends StatelessWidget {
  final IconData icon;
  final String pageName;
  const CustomTab({
    Key key, this.icon, this.pageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.white,),
          SizedBox(width: 5,),
          Text(pageName, style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
