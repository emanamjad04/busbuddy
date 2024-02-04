
import 'package:busbuddyy/widgets/secondarytext.dart';
import 'package:flutter/material.dart';
import 'package:busbuddyy/responsive.dart';
import '../colors.dart';

class ybox extends StatefulWidget {
  double width;
  double height;
  String text;
  double radius;
  double textsize;
  Color textcolor;
  bool isblck;
  ybox({this.isblck=false,this.textcolor=Colors.black,this.textsize=45,this.radius=10.0,this.text="",this.width=50,this.height=75,super.key});

  @override
  State<ybox> createState() => _yboxState();
}

class _yboxState extends State<ybox> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(3),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.radius),
          color:widget.isblck? Color(0xFF192E2B):appcolors().secondary,
        ),
        child:Center(child: stext(text:widget.text,size:responsive.getResponsiveValue(context,widget.textsize),color:widget.textcolor ,)
        ),
      ),
    );
  }
}
