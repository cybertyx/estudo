import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final String labelText;
  final IconData icon;
  final Function onTap;
  final Stream stream;
  final Function(String) onChanged;

  InputField({this.onTap, this.icon, this.hint, this.labelText, this.obscure, this.stream, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: stream,
        builder: (context, snapshot) {
          return Container(
            child: Theme(
              data: new ThemeData(
                primaryColor: Color(0xff555e6c),
              ),
              child: new TextField(
                onChanged: onChanged,
                onTap: onTap,
                textAlign: TextAlign.center,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                    borderSide: new BorderSide(
                      color: Color(0xff555e6c),
                    ),
                  ),
                  hintText: hint,
                  hintStyle: TextStyle(color: Color(0xff555e6c)),
                  //helperText: 'Demonstração de Texto',
                  //labelText: labelText,
                  errorText: snapshot.hasError ? snapshot.error : null,
                ),
                obscureText: obscure,
              ),
            ),
          );
        }
    );
  }
}
