import 'package:flutter/cupertino.dart';

class Responsive {
  static double getResponsiveValue(BuildContext context, double defaultValue) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 1200) {
      // Large screen
      return defaultValue * 1.5;
    } else if (screenWidth >= 600) {
      // Medium screen
      return defaultValue * 1.2;
    } else if (screenWidth < 300) {
      return defaultValue * 0.8;
    }
    // else if(screenWidth>=600 && screenHeight<600 ){
    //   return defaultValue *0.2 ;
    // }
    else {
      // Small screen
      return defaultValue;
    }
  }

  static double marginresponsive(BuildContext context, double defaultValue) {
    double screenHeight = MediaQuery.of(context).size.height;

    if (screenHeight <= 670) {
      return defaultValue * 0.4;
    } else {
      return defaultValue;
    }
  }
// static double getResponsiveValue2(BuildContext context, double defaultValue){
//   double screenHeight = MediaQuery.of(context).size.height;
//   if(screenHeight<700){
//   return defaultValue * 0.3;
//   }
//   else if(screenHeight<500){
//     return defaultValue * 0.1;
//   }
//   else {
//     return defaultValue;
//   }
// }
}
