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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          child: TextFormField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
                focusColor: pass,
                helperText: "Your Password"
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 40),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                focusColor: confpass,
                helperText: "Confirm Password"
            ),
            onChanged: (s){
              setState(() {
                if(s!=password.text){
                  confpass = Colors.red;
                }else{
                  confpass = Colors.green;
                }
              });
            },
          ),
        )
      ],
    );
  }
}

