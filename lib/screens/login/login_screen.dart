import 'package:affff/screens/login/widgets/form_container.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));

  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.white70,
              Colors.white,
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 50),
                      child: Image.asset(
                        "assets/images/logo.png",
                        scale: 12,
                      ),
                    ),
                    FormContainer(
                      controller: _animationController.view,
                    ),
                    //SignUpButton(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
