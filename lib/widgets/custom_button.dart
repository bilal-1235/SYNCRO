import 'package:flutter/material.dart';
import 'package:syncro/widgets/tesxt_widgets.dart';
import '../core/const/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final Color color;
  final Color titleColor;
  final double fontSize;
  final FontWeight fontWeight;
  const CustomButton(
      {super.key,
      required this.title,
        this.titleColor = AppColors.bgColor,
      required this.onTap,
      this.height = 43,
      this.width = 1,
      this.color = AppColors.primaryColor,
      this.fontSize = 16.0,
      this.fontWeight = FontWeight.w700});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        alignment: Alignment.center,
        height:height,
        width: MediaQuery.sizeOf(context).width * width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color,
        ),
        child: mediumText(
            title: title,
            context: context,
            fontSize: fontSize.toDouble(),
            color: titleColor,
            fontWeight: fontWeight),
      ),
    );
  }
}
