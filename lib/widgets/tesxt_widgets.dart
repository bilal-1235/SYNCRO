
import 'package:flutter/material.dart';
import '../core/const/app_colors.dart';



Widget largeText({
  required String title,
  context,
  double fontSize = 24,
  double height = 0,
  fontWeight = FontWeight.w600,
  color = AppColors.primaryTextColor,
}) {
  return Text(
    title,
    style: TextStyle(
      height: height.toDouble(),
      fontSize: fontSize.toDouble(),
      fontWeight: fontWeight,
      color: color,
    )
  );
}

Widget mediumText({
  required String title,
  context,
  double fontSize = 16,
  fontWeight = FontWeight.w400,
  Color color = AppColors.primaryTextColor,
}) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontSize.toDouble(),
      fontWeight: fontWeight,
      color: color,
    )
  );
}

Widget smallText({
  required String title,
  context,
  double fontSize = 12,
  double height = 0,
  fontWeight = FontWeight.w400,
  color = AppColors.primaryTextColor,
}) {
  return Text(
    title,
    style: TextStyle(
      height: height.toDouble(),
      fontSize: fontSize.toDouble(),
      fontWeight: fontWeight,
      color: color,
    ),
    softWrap: true,
    maxLines: 10,
    overflow: TextOverflow.ellipsis,
  );
}






class TextWidgets {

  static TextStyle smallTextStyle({
    double fontSize = 12,
    fontWeight = FontWeight.w400,
    Color color = AppColors.primaryTextColor,
    TextOverflow overflow = TextOverflow.clip
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize.toDouble(),
      overflow: overflow,
    );
  }

  static TextStyle mediumTextStyle({
    double fontSize = 16,
    fontWeight = FontWeight.w400,
    Color color = AppColors.primaryTextColor,
    TextOverflow overflow = TextOverflow.clip
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize.toDouble(),
      overflow: overflow,
    );
  }

  static TextStyle largeTextStyle({
    double fontSize = 24,
    double height = 1.1,
    fontWeight = FontWeight.w600,
    color = AppColors.primaryTextColor,
    TextOverflow overflow = TextOverflow.clip
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize.toDouble(),
      overflow: overflow,
    );
  }


}
