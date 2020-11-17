import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inap/utils/constants.dart';
import 'package:inap/utils/styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';
import 'onboarding.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool _seen = prefs.getBool(Contants.appPreviouslyRunKey) ?? false;
    bool _seen = false;
    if (_seen) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      await prefs.setBool(Contants.appPreviouslyRunKey, true);
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => OnBoardingPage()));
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Styles.appPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("assets/images/inap.png")],
      ),
    );
  }
}
