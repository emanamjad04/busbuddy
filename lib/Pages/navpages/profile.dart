
import 'package:flutter/material.dart';

import '../../widgets/primarytext.dart';
import '../../widgets/secondarytext.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  Map<String, Icon> names = {
    "User Information": Icon(
      Icons.account_circle,
      size: 28,
    ),
    "About BusBuddy": Icon(
      Icons.directions_bus,
      size: 28,
    ),
    "Share Feedback / Suggestion": Icon(
      Icons.favorite,
      size: 28,
    ),
    "Terms of Usage": Icon(
      Icons.library_books_rounded,
      size: 28,
    ),
    "Privacy Policy": Icon(
      Icons.gpp_good_rounded,
      size: 28,
    ),
    "Log Out": Icon(
      Icons.login_outlined,
      size: 28,
    )
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(top: 80, left: 10, child: ptext(text: "My Profile")),
            Positioned(
                top: 140,
                left: 15,
                right: 15,
                child: Container(
                  // padding: EdgeInsets.only(top: 45),
                  height: 114,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow:  [
                        BoxShadow(
                            blurRadius: 15,
                            color: Colors.grey.shade200,
                            spreadRadius: 1

                        )
                      ]
                  ),
                  child: Center(child: stext(text: "Emily Clark",size: 22,)),
                )
            ),
            Positioned(
              top: 155,
              left: 30,
              child: CircleAvatar(
                radius: 38,
                backgroundImage: AssetImage("assets/User_image.png"),
              ),
            ),
            Positioned(
              child: Flexible(
                child: Container(
                  margin: EdgeInsets.only(top: 300, left: 10, right: 10),
                  height: 600,
                  child: ListView.builder(
                      itemCount: names.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, index) {
                        return Card(
                          margin: EdgeInsets.all(0.8),
                          child: ListTile(
                            onTap: () {},
                            leading: names.values.elementAt(index),
                            title: stext(text: "${names.keys.elementAt(index)}"),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ));
  }
}