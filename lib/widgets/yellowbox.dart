import 'package:busbuddyy/widgets/apptext.dart';
import 'package:flutter/material.dart';
import 'package:busbuddyy/responsive.dart';
import '../colors.dart';

class Ybox extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final double radius;
  final double textsize;
  final Color textcolor;
  final bool isblck;
  const Ybox({
    this.isblck = false,
    this.textcolor = Colors.black,
    this.textsize = 45,
    this.radius = 10.0,
    this.text = "",
    this.width = 50,
    this.height = 75,
    Key? key,
  }) : super(key: key);

  @override
  State<Ybox> createState() => _YboxState();
}

class _YboxState extends State<Ybox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(3),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          color: widget.isblck ? const Color(0xFF192E2B) : Appcolors().secondary,
        ),
        child: Center(
            child: Apptext(
          text: widget.text,
          size: Responsive.getResponsiveValue(context, widget.textsize),
          color: widget.textcolor,
        )),
      ),
    );
  }
}
