import 'package:crystaspace_login/login/login.dart';
import 'package:crystaspace_login/register/signup.dart';
import 'package:flutter/material.dart';

class buttonsRow extends StatelessWidget {
  String button1,button2;
  buttonsRow({this.button1,this.button2});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              child: Center(child: Text(button1))),
          onPressed: () {},
        ),
        FlatButton(onPressed: () {
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
          }, child: Container(
                decoration: BoxDecoration(color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(12)),
                width: 80,
                height: 60,
                child: Center(child: Text(button2))))
      ],
    );
  }
}
