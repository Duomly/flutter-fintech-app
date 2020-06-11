import 'package:flutter/material.dart';
import 'package:fintech_app/widgets/login.dart';

class Welcome extends StatefulWidget {
  Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  bool _login = true;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
          backgroundColor: Color(0xFF4A148C),
          body: Center(
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0, bottom: 50.0),
              color: Colors.white,
              height: _screenSize.height * 0.7,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: _login ? Login(
                  onFormSwitch: () {
                    setState(() {
                      _login = !_login;
                    });
                  },
                ) : Text('HERE WILL BE REGISTRATION FORM'),
              )
            )
          )
    );
  }
}
