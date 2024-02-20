import 'package:flutter/material.dart';
import 'package:busbuddyy/helpers/extensions/colors.dart';

class Apptext extends StatelessWidget {
  final String text;
  final double? size;
  final bool islight;
  Color? color = Appcolors().primary;
  final bool isbig;
  Apptext(
      {this.isbig = false,
      required this.text,
      this.size,
      this.islight = false,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    final defaultval = isbig ? (size ?? 40) : (size ?? 19);
    return Text(
      text,
      style:TextStyle(
          color: islight
              ? color?.withOpacity(0.4) ?? Colors.black.withOpacity(0.4)
              : color ?? Appcolors().primary,
          fontWeight: isbig ? FontWeight.w700 : FontWeight.w600,
          fontFamily: isbig ? 'pop' : '',
          fontSize: defaultval),
    );
  }
}
