import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'components/text_form_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/beerief.png',
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
                child: buildForm(),
              )
            ],
          ),
        ]),
      ),
    );
  }

  Form buildForm() {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: CustomTextFormField(
              color: Colors.amber[600],
              icon: Icons.person,
              hintText: 'Kullanıcı Email Adresi',
              labelText: 'Email',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: CustomTextFormField(
              color: Colors.amber[600],
              icon: Icons.lock,
              hintText: 'Kullanıcı Şifre',
              labelText: 'Şifre',
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
            child: RaisedButton(
              elevation: 1,
              splashColor: Colors.black,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24.0,8.0,24.0,8.0),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    color: Colors.amber[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 28
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.transparent, width: 2.0),
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () {},
            ),
          ),
        ],
      ),
      onChanged: () {},
    );
  }
}
