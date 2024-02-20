import 'package:busbuddyy/helpers/widgets/yellowbox.dart';
import 'package:flutter/material.dart';

import '../../screens/navScreens/mainnav.dart';
import '../functions/responsive.dart';
import 'apptext.dart';
import 'field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Apptext(
          text: "Hey there!",
          size: Responsive.getResponsiveValue(context, 48),
        ),
        SizedBox(
          height: Responsive.getResponsiveValue(context, 18),
        ),
        const Field(hint: 'Username'),
        SizedBox(
          height: Responsive.getResponsiveValue(context, 18),
        ),
        const Field(hint: 'Password'),
        SizedBox(
          height: Responsive.getResponsiveValue(context, 50),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Mainnav()));
            },
            child: Ybox(
              text: "Get Started",
              isblck: true,
              width:
              Responsive.getResponsiveValue(context, 380),
              textcolor: Colors.white,
              textsize:
              Responsive.getResponsiveValue(context, 24),
              height:
              Responsive.getResponsiveValue(context, 60),
              radius:
              Responsive.getResponsiveValue(context, 100),
            )),
        SizedBox(
          height: Responsive.getResponsiveValue(context, 34),
        ),
        Center(
            child: Apptext(
              text: "Forgotten Password?",
              size: Responsive.getResponsiveValue(context, 16),
            ))
      ],
    );
  }
}
