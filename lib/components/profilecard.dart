import 'package:flutter/material.dart';

class CustomProfileCard extends StatelessWidget {
  final String imageUrl;
  final String username;

  const CustomProfileCard({Key key, this.imageUrl, this.username}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(height: 10,),
            Text('Welcome back', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 18),),
            SizedBox(height: 2,),
            Text(username, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 22),),
          ],
        ),
      ),
    );
  }
}
