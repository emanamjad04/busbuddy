
import 'package:flutter/material.dart';
import 'package:busbuddyy/responsive.dart';
class field extends StatelessWidget {
  String hint;
  field({super.key,required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsive.getResponsiveValue(context, 61),
      width: responsive.getResponsiveValue(context, 380),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white,

          borderRadius: BorderRadius.circular(responsive.getResponsiveValue(context, 8))

      ),
      child: Center(
        child: TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.black,fontSize: responsive.getResponsiveValue(context, 22))
          ),
        ),
      ),
    );
  }
}
