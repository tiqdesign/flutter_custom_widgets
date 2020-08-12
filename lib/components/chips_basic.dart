import 'package:flutter/material.dart';

class CustomChip extends StatefulWidget {
  final Color backgroundColor;
  final Color avatarColor;
  //final Color avatarTextColor;
  //final Color labelTextColor;
  final String label;


  const CustomChip({Key key, this.backgroundColor, this.avatarColor,this.label}) : super(key: key);

  @override
  _CustomChipState createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 4,
      backgroundColor: widget.backgroundColor,
      shadowColor: widget.backgroundColor,
      avatar: CircleAvatar(
        radius: 20,
        backgroundColor:widget.avatarColor,
        child: Text(widget.label.substring(0,1), style: TextStyle(color: widget.backgroundColor, fontWeight: FontWeight.bold),),
      ), label: Text(widget.label, style: TextStyle(color: widget.avatarColor, fontWeight: FontWeight.bold, fontSize: 16),),
    );
  }
}
