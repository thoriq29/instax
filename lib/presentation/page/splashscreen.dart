import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instax/presentation/page/home.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Splashscreen();
  }
}

class _Splashscreen extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder:(context) => 
                Home()
              )
            )
         );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/img/fujifilm.png",
                  height: 80,
              )
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: TextSpan(
                    text: "Made with ",
                    style: TextStyle(
                      color: Colors.black
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(
                          FontAwesomeIcons.solidHeart,
                          size: 16,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: " | © 2021"
                      )
                    ]
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
