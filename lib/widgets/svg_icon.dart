import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


Widget svgIcon({required String iconPath ,Color ? color,double ? height }){
  return SvgPicture.asset(iconPath,height: height,color: color,);
}