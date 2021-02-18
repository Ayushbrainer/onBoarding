import 'package:crystaspace_login/onBoard/page1.dart';
import 'package:crystaspace_login/onBoard/page2.dart';
import 'package:crystaspace_login/onBoard/page3.dart';
import 'package:crystaspace_login/register/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final int numberPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for(int i=0;i< numberPages;i++){
      list.add(i==currentPage? _indicator(true):_indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive?24.00:16.00,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(12.0)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF11998e),
              Color(0xFF38ef7d),
              //Color(0xFFFF0080)
            ]
          )
        ),
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              children: [
                Container(
                  height: 600,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    children: <Widget>[
                      page0(),
                      page1(),
                      page2()
                    ],
                    onPageChanged: (int page){
                      setState(() {
                        currentPage = page;
                      });
                    },
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: currentPage == numberPages-1?InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
        },
        child: Container(
          height: 90,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: Center(child: Text("Get Started",textAlign: TextAlign.center,)),
          ),
        ),
      ):Text(""),
    );
  }
}






