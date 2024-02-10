import 'package:flutter/material.dart';
import '../../widgets/apptext.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const Map<String, Icon> names = {
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
        //main text
        Positioned(
            top: 80,
            left: 10,
            child: Apptext(
              text: "My Profile",
              isbig: true,
            )),
        //student name
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
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 15,
                        color: Colors.grey.shade200,
                        spreadRadius: 1)
                  ]),
              child: Center(
                  child: Apptext(
                text: "Emily Clark",
                size: 22,
              )),
            )),
        //student dp
        const Positioned (
          top: 155,
          left: 30,
          child: CircleAvatar(
            radius: 38,
            backgroundImage: AssetImage("assets/User_image.png"),
          ),
        ),
        //lists of settings
        Positioned(
          child: Flexible(
            child: Container(
              margin: const EdgeInsets.only(top: 300, left: 10, right: 10),
              height: 600,
              child: ListView.builder(
                  itemCount: names.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      margin: const EdgeInsets.all(0.8),
                      child: ListTile(
                        tileColor: Colors.white,
                        onTap: () {},
                        leading: names.values.elementAt(index),
                        title: Apptext(text: names.keys.elementAt(index)),
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
