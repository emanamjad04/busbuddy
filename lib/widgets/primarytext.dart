
import 'package:flutter/cupertino.dart';

import '../colors.dart';

class ptext extends StatelessWidget {
  String text;
  double size;
  Color? color;
  ptext({required this.text,this.size=40,this.color,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          color: color??appcolors().primary ,
          fontFamily: 'pop',
          fontWeight: FontWeight.w700,
          fontSize: size
      ),
    );
  }
}
