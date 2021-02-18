import 'package:flutter/material.dart';

class password extends StatefulWidget {
  TextEditingController passwordCont;
  password(this.passwordCont);
  @override
  _passwordState createState() => _passwordState(passwordCont);
}

class _passwordState extends State<password> {
  TextEditingController password;
  Color pass = Colors.green,confpass = Colors.green;
  _passwordState(this.password);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextFormField(
        controller: password,
        obscureText: true,
        decoration: InputDecoration(
            focusColor: pass,
            helperText: "Your Password"
        ),
      ),
    );
  }
}