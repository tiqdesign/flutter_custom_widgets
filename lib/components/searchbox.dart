import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {

  final Color color;
  final Function onPressed;

  const CustomSearchBar({Key key, this.color, this.onPressed}) : super(key: key);
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              offset: Offset(4,4),
              blurRadius: 0
            ),
          ]
        ),
        child: Row(
          children: [
            IconButton(
              splashColor:  Colors.transparent,
              icon: Icon(Icons.search, size: 26, color: widget.color,),
              padding: EdgeInsets.all(0),
              onPressed: widget.onPressed,
            ),
            Expanded(
              child: TextFormField(
                cursorColor:widget.color,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle:  TextStyle(color: widget.color, fontWeight: FontWeight.w600,),
                    fillColor: Color(0xffF0EEF6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                //
              ),
            ),
          ],
        ),
      ),
    );
  }
}
