import 'package:flutter/material.dart';


class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/3.jpg',
              fit: BoxFit.fill,
            )),
        SizedBox(
          height: 30,
        ),
        Text('SignUp with us if you are new!',style: TextStyle(
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
