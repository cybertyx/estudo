import 'package:affff/screens/login/widgets/input_field.dart';
import 'package:affff/screens/login/widgets/raised_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class FormContainer extends StatelessWidget {
  final AnimationController controller;

  static double beginAn = 0.0;
  static double endAn = 0.0;

  FormContainer({this.controller})
      : buttonLoading = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.ease),
          ),
        ),
        buttonWalk = Tween(
          begin: EdgeInsets.only(top: 80),
          end: EdgeInsets.only(top: 0),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.ease),
          ),
        ),
        buttonRegistrando = Tween(
          begin: EdgeInsets.only(top: 170),
          end: EdgeInsets.only(top: 200),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.ease),
          ),
        ),
        buttonLogin = Tween(
          begin: EdgeInsets.only(top: 200),
          end: EdgeInsets.only(top: 230),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.ease),
          ),
        ),
        buttonRegistrandoAlpha = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.ease),
          ),
        ),
        buttonLoginAlpha = Tween(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.ease),
          ),
        ),
        textFieldPassword = Tween(
          begin: EdgeInsets.only(top: 0),
          end: EdgeInsets.only(top: 30),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.ease),
          ),
        ),
        textFieldPasswordAlpha = Tween(
          begin: 1.0,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.15, curve: Curves.ease),
          ),
        );

  final Animation<EdgeInsets> buttonWalk;
  final Animation<double> buttonLoading;
  final Animation<double> buttonRegistrandoAlpha;
  final Animation<double> buttonLoginAlpha;
  final Animation<EdgeInsets> buttonRegistrando;
  final Animation<EdgeInsets> buttonLogin;
  final Animation<EdgeInsets> textFieldPassword;
  final Animation<double> textFieldPasswordAlpha;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Form(
      child: Column(
        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
//            child: InputField(
//              onTap: () {
//                beginAn = 0.0;
//                endAn = 0.5;
//                controller.forward();
//              },
//              hint: "Digite seu Nome",
//              labelText: "Usuário",
//              obscure: false,
//              icon: Icons.person,
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
//            child: InputField(
//              onTap: () {
//                beginAn = 0.0;
//                endAn = 0.5;
//                controller.forward();
//              },
//              hint: "Digite seu Email",
//              labelText: "Password",
//              obscure: false,
//              icon: Icons.lock_outline,
//            ),
//          ),
          Container(
            child: Stack(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  child: Opacity(
                    opacity: textFieldPasswordAlpha.value,
                    child: Padding(
                      padding: textFieldPassword.value,
                      child: InputField(
                        onTap: () {
                          beginAn = 0.0;
                          endAn = 0.5;
                          controller.forward();
                        },
                        hint: "Digite seu Password",
                        labelText: "Password",
                        obscure: true,
                        icon: Icons.lock_outline,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 85),
                  child: FlatButton(
                    onPressed: () {
                      controller.reset();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Did you forgot your ",
                          style: TextStyle(color: Color(0xFF555e6c)),
                        ),
                        Text(
                          "password",
                          style: TextStyle(color: Color(0xFF36d300)),
                        ),
                        Text(
                          " ?",
                          style: TextStyle(color: Color(0xFF555e6c)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: buttonWalk.value * 1,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
                    child: Container(
                      height: 60,
                      child: RaisedGradientButton(
                        child: Text(
                          'Landing',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        gradient: LinearGradient(
                          //Color(0xffdae0e9) - Color(0xff8998b0)
                          colors: [
                            Color(0xffc7ef35),
                            Color(0xff52d729),
                            Color(0xffced6d6),
                            Color(0xffced6e7)
                          ],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(buttonLoading.value, 0.0),
                          stops: [0.0, 1, 1, 0.0],
                          tileMode: TileMode.clamp,
                        ),
                        onPressed: () {

                        },
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: buttonLoginAlpha.value * 1,
                  child: Padding(
                    padding: buttonLogin.value * 1,
                    child: FlatButton(
                      onPressed: () {
                        beginAn = 0.0;
                        endAn = 0.5;
                        controller.forward();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "If you have account, please ",
                            style: TextStyle(color: Color(0xFF555e6c)),
                          ),
                          Text(
                            "Login",
                            style: TextStyle(color: Color(0xFF36d300)),
                          ),
                          Text(
                            " .",
                            style: TextStyle(color: Color(0xFF555e6c)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: buttonRegistrandoAlpha.value * 1,
                  child: Padding(
                    padding: buttonRegistrando.value * 1,
                    child: FlatButton(
                      onPressed: () {
                        controller.reverse();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Registrando",
                            style: TextStyle(color: Color(0xFF555e6c)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 8;
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }
}
