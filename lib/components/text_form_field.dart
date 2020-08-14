import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Color color;
  final IconData icon;

  const CustomTextFormField({
    Key key, this.labelText, this.hintText, this.color, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      elevation: 4,
      margin: EdgeInsets.all(0),
      child: TextFormField(
        cursorColor: color,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            prefixIcon: Icon(icon,),
            hintText: hintText,
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always
        ),
      ),
    );
  }
}
