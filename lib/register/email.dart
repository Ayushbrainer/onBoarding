import 'package:flutter/material.dart';

class email extends StatelessWidget {
  TextEditingController emailController;
  email({this.emailController});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.25),
      child: TextFormField(
        decoration: InputDecoration(
            helperText: "Your email please",
            focusColor: Colors.green
        ),
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      ),
    );
  }
}
