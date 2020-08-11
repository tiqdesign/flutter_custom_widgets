import 'package:flutter/material.dart';
class CustomButtonWithIcon extends StatefulWidget {
  final Color itemsColor;
  final Color backColor;
  final IconData icon;
  final double size;
  final String text;

  const CustomButtonWithIcon({Key key, this.itemsColor, this.backColor, this.icon, this.size, this.text}) : super(key: key);
  @override
  _CustomButtonWithIconState createState() => _CustomButtonWithIconState();
}

class _CustomButtonWithIconState extends State<CustomButtonWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          RawMaterialButton(
            fillColor: widget.backColor,
            elevation: 3,
            shape: StadiumBorder(),
            onPressed: () {
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12.0,0.0,12.0,0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(widget.icon, size: widget.size,color: widget.itemsColor,),
                  SizedBox(width: 5,),
                  Text(widget.text, style: TextStyle(color: widget.itemsColor, fontSize: widget.size, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
