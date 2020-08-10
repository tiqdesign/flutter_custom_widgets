import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCard extends StatefulWidget {
  final Color backgroundColor;
  final double borderRadius;
  final String imageUrl;
  final String title;
  final String subtitle;
  final Icon icon;
  final Function onPressed;

  const CustomCard({Key key, this.backgroundColor, this.borderRadius, this.title, this.subtitle, this.imageUrl, this.icon, this.onPressed}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //CardContainer
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(widget.borderRadius),bottomRight:Radius.circular(widget.borderRadius),topRight: Radius.circular(widget.borderRadius)),
          color: widget.backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //For Image Border Radius
            ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(widget.borderRadius)),
                child: Image.network(widget.imageUrl,width: MediaQuery.of(context).size.height/6,fit: BoxFit.cover,)),
            SizedBox(width: 15.0,),
            //Card Texts
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 28.0),),
                  SizedBox(height: 5.0,),
                  Text(widget.subtitle, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w400, fontSize: 18.0),),
                ],
              ),
            ),
            //Card action button
            IconButton(
              onPressed: widget.onPressed,
              icon: widget.icon,
            )
          ],
        ),
      ),
    );
  }
}
