import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomMuvuProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height/6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0.0,12.0,0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(100)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 50),
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Images', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                          SizedBox(height: 2,),
                          Icon(Icons.image),
                          Text('52', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Followers', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                          SizedBox(height: 2,),
                          Icon(Icons.person),
                          Text('32', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage('https://widgetwhats.com/app/uploads/2019/11/free-profile-photo-whatsapp-4.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
