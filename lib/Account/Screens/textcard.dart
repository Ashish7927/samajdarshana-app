// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:heroicons/heroicons.dart';
import 'package:samaj_darpana/Account/Screens/sidebar.dart';

class TextCard extends StatefulWidget {
  const TextCard({Key? key}) : super(key: key);

  @override
  State<TextCard> createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.only(top: 20, left: 20, right: 20),
    //   child:
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 200,
            child: Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.yellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage("assets/images/yuvaadmin.png"),
                    height: 190,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text("युवा राहुल अग्रवाल",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800)),
                        Text(" अध्यक्ष",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text("मारवाड़ी युवा मंच",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700)),
                        Text("7277756056",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
    // );
  }
}
