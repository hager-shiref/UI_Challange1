import 'package:flutter/material.dart';
import 'package:ui1/model/social_list.dart';

class SocialMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: social.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              height: 150,
              width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    social[index]['socialName'],
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      height: MediaQuery.of(context).size.height / 10,
                      width: MediaQuery.of(context).size.width / 5,
                      color: social[index]['color'],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff404757)),
                        child: Text(
                          'Copy',
                          style: TextStyle(color: Color(0xff187a8c)),
                        )),
                  )
                ],
              ),
            );
          }),
    );
  }
}
