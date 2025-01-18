import 'dart:async';

import 'package:flutter/material.dart';

import 'on_bording.dart';

class Splash_page extends StatefulWidget {
  const Splash_page({super.key});

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {
  void initState() {
    super
        .initState(); // إعداد المؤقت للانتقال إلى شاشة تسجيل الدخول بعد 3 ثوانٍ
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => On_Bording()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/Group@3x.png"))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/Frame.png"),
                          fit: BoxFit.cover)),
                ),
                Text(
                  "Docdoc",
                  style: TextStyle(
                      color: Color(0xff242424),
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
