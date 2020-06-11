import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({this.onFormSwitch});
  final LoginCallback onFormSwitch;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextFormField(
      decoration: InputDecoration(labelText: 'Username'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
    final passwordField = TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
    final loginButon = RaisedButton(
      color: Color(0xFF2979FF),
      textColor: Colors.white,
      onPressed: () {},
      child: Text('Login', style: TextStyle(fontSize: 20)),
    );
    final switchButton = FlatButton(
      onPressed: () {
        onFormSwitch();
      },
      textColor: Color(0xFF2979FF),
      child: Text(
        "SIGN UP",
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 50.0,
          child: Image.asset(
            "assets/logo.png",
          ),
        ),
        SizedBox(height: 20.0),
        usernameField,
        SizedBox(height: 20.0),
        passwordField,
        SizedBox(
          height: 20.0,
        ),
        loginButon,
        SizedBox(
          height: 10.0,
        ),
        switchButton,
      ],
    );
  }
}

typedef LoginCallback = void Function();
