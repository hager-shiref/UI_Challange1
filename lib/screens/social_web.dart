import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui1/model/social_list.dart';

class SocialWebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width / 7,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        social[index]['socialName'],
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 6,
                        color: social1[index]['color'],
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
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width / 7,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        social2[index]['socialName'],
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: MediaQuery.of(context).size.height / 10,
                        width: MediaQuery.of(context).size.width / 6,
                        color: social2[index]['color'],
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
                )
              ],
            );
          }),
    );
  }
}
