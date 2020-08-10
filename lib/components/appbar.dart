import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  final Color color;
  final Color shadowColor;
  final Icon icon;
  final double height;
  final Widget child;
  final String photo;
  final Function onPressed;


  const CustomAppBar({Key key, this.color, this.height, this.child, this.photo, this.shadowColor, this.icon, this.onPressed}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0),
      child: Container(
        height: widget.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color:widget.color,
          boxShadow:[
            BoxShadow(
              color: widget.shadowColor,
              blurRadius: 0,
              offset: Offset(4,4)
            )
          ],
          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20.0),
          bottomRight: Radius.circular(20.0))
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Leading Icon Button For Drawer?!
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: widget.onPressed,
                icon:widget.icon
              ),
            ),
            //Logo or Text
            Expanded(child: Center(child: widget.child)),
            //Circle Avatar for User
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(widget.photo),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
