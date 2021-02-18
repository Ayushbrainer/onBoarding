import 'package:flutter/material.dart';

class page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/1.jpg',
            fit: BoxFit.fill,
          ),
          height: MediaQuery.of(context).size.height * 0.269,
        ),
        SizedBox(
          height: 30,
        ),
        Text('Welcome to my App',style: TextStyle(
          fontFamily: "Ubuntu",
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white
        ),),
        SizedBox(
          height: 50,
        )
      ],
    );
  }
}