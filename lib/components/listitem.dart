import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final Color color;
  final String title;
  final IconData icon;

  const CustomListItem({Key key, this.color, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          color: color.withOpacity(0.1),
        ),
        child: ListTile(
          dense: false,
          leading: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color: color.withOpacity(0.2),
            ),
            child: Icon(icon, size: 35, color: color,),
          ),
          title: Text(title, style: TextStyle(color: color, fontSize: 22, fontWeight: FontWeight.bold),),
          contentPadding: EdgeInsets.all(20),
          trailing: Icon(Icons.more_vert, color: color, size: 24,),
        ),
      ),
    );
  }
}
