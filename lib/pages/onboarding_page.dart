import 'package:bloodconnect/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Start Now',
      finishButtonTextStyle: TextStyle(fontSize: 18),
      onFinish: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return IntroPage();
          },
        ));
      },
      skipTextButton: Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: PrimaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        // Navigator.push(
        //   context,
        //   CupertinoPageRoute(
        //     builder: (context) => LoginPage(),
        //   ),
        // );
      },
      controllerColor: PrimaryColor,
      totalPage: 2,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      imageHorizontalOffset: 65,
      imageVerticalOffset: 60,
      finishButtonStyle: FinishButtonStyle(
          backgroundColor: PrimaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
      background: [
        Image.asset(
          'assets/img/onboarding1.png',
          height: 250,
        ),
        Image.asset(
          'assets/img/onboarding2.png',
          height: 200,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Find Blood Donors',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text(
                'Post A Blood Request',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: PrimaryColor,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/logo1.png",
                  width: 250,
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: Text(
                    "You can donate for ones in need and request blood if you need.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
            Column(
              children: [
                InkWell(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 50,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: PrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: PrimaryColor, width: 3),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(height: 24),
                InkWell(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 50,
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: PrimaryColor,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
