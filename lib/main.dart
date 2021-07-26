import 'package:flutter/material.dart';
import 'package:ui1/screens/social_mobile.dart';
import 'package:ui1/screens/social_web.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            backgroundColor: Color(0xff12203a),
            body: ListView(
              children: [
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'CAT Reloaded',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'UI Challenge 2 for Flutter Circle',
                    style: TextStyle(
                      color: Color(0xff48546c),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Social Media UI Colors',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                constraints.minWidth.toInt() <= 885
                    ? SocialMobile()
                    : SocialWebScreen()
              ],
            ),
          );
        },
      ),
    );
  }
}
