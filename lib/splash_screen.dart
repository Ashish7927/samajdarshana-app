// ignore_for_file: prefer_const_constructors

import 'Account/Screens/register.dart';

import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

late String finalStatus = "null";

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getValidationData().whenComplete(() async => Timer(
          Duration(seconds: 4),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Register())),
        ));
  }

  Future getValidationData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: const [
              Color.fromARGB(255, 242, 154, 103),
              Color.fromARGB(255, 129, 204, 204)
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Image(
                image: AssetImage("assets/images/samaj.png"),
                height: 450,
                width: 300,
                alignment: Alignment.center,
              ),
            ),
            Text(
              "WELCOME TO SAMAJ DARPAN",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.underline),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage(
                          "assets/images/yuvaadmin.png",
                        ),
                        backgroundColor: Colors.white,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("युवा राहुल अग्रवाल अध्यक्ष (2021-23) "),
                    Text("मारवाड़ी युवा मंच, मोतिहारी"),
                    Text("7277756056"),
                    // Text(
                    //   Provider.of<UserProfileProvider>(context,
                    //           listen: true)
                    //       .userName,
                    //   style: const TextStyle(
                    //       fontSize: sub_title,
                    //       color: Color(subtitle_grey),
                    //       fontWeight: FontWeight.w500),
                    // )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
