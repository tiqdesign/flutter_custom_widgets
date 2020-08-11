import 'package:flutter/material.dart';

class CustomCheckboxListTile extends StatefulWidget {
  @override
  _CustomCheckboxListTileState createState() => _CustomCheckboxListTileState();
}

class _CustomCheckboxListTileState extends State<CustomCheckboxListTile> {
  bool _check = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      dense: true,
      secondary: Image.asset('assets/images/logo.png', width: 50  ,),
      title: Text(
        'Beerief uygulamasını tamamla!',
        style: TextStyle(color: Colors.black),
      ),
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.amber,
      onChanged: (bool value) {
        setState(() {
          _check = value;
        });
      },
      value: _check,
    );
  }
}
