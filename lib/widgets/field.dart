import 'package:flutter/material.dart';
import 'package:busbuddyy/responsive.dart';

class Field extends StatelessWidget {
  final String hint;
  const Field({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.getResponsiveValue(context, 61),
      width: Responsive.getResponsiveValue(context, 380),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(Responsive.getResponsiveValue(context, 8))),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: Responsive.getResponsiveValue(context, 22))),
        ),
      ),
    );
  }
}
