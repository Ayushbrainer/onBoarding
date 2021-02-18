import 'file:///C:/Users/nmabh/AndroidStudioProjects/crystaspace_login/lib/login/login.dart';
import 'package:crystaspace_login/register/email.dart';
import 'package:crystaspace_login/register/password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController emailController, passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFbc4e9c),
              Color(0xFFf80759)
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Sign Up !",
                style: TextStyle(
                    fontFamily: "LexendMega",
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 3
                ),

            ),
            SizedBox(
              height: 20,
            ),
            email(emailController: emailController),
            password(passwordController),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlatButton(
                  hoverColor: Colors.white60,
                  child: Container(
                    // margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.25),
                    // padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(12)),
                      width: 80,
                      height: 60,
                      child: Center(child: Text("SignUp!",))),
                  onPressed: () {},
                ),
                FlatButton(onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginPage()));
                }, child: Container(
                  // margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.25),
                  // padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(12)),
                    width: 80,
                    height: 60,
                    child: Center(child: Text("Login"))))
              ],
            )
          ],
        ),
      ),
    );
  }
}