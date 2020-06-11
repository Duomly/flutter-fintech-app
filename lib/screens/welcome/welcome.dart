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
              margin: const EdgeInsets.all(20.0),
              color: Colors.white,
              height: _screenSize.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
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
