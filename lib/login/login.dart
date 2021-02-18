import 'file:///C:/Users/nmabh/AndroidStudioProjects/crystaspace_login/lib/register/signup.dart';
import 'file:///C:/Users/nmabh/AndroidStudioProjects/crystaspace_login/lib/login/buttons.dart';
import 'package:crystaspace_login/login/email.dart';
import 'package:crystaspace_login/login/password.dart';
import 'package:flutter/material.dart';


class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController emailController, passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF4e54c8),
                Color(0xFF8f94fb)
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("LOGIN",style: TextStyle(
              fontFamily: "LexendMega",
              fontSize: 30,
              color: Colors.white,
              letterSpacing: 3
          ),),
              SizedBox(height: 100,),
              email(emailController: emailController),
              password(passwordController),
              SizedBox(height: 80,),
              buttonsRow(button1:"Login",button2:"Register"),
            ],),
        )
    );
  }
}
