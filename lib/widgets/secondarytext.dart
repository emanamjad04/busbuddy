import 'package:flutter/material.dart';
import '../colors.dart';
class stext extends StatelessWidget {
  String text;
  double size;
  bool islight;
  Color? color=appcolors().primary;
  stext({required this.text,this.size=19,this.islight=false,this.color,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: islight
              ? color?.withOpacity(0.4) ?? Colors.black.withOpacity(0.4)
              : color ?? appcolors().primary,
          fontWeight: FontWeight.w600,
          fontSize: size
      ),
    );
  }
}
