

import 'package:flutter/material.dart';
import '../../../../core/assets/app_icons.dart';
import '../../../../core/const/app_colors.dart';
import '../../../../widgets/custom_sized.dart';
import '../../../../widgets/svg_icon.dart';

class AuthOptionsWidget extends StatelessWidget {
  const AuthOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          shadowColor: AppColors.primaryTextColor.withOpacity(0.25),
          color: AppColors.bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.bgColor,
                border: Border.all(color:AppColors.strokeColor)
            ),
            height: 52.7,
            width: 67.19,
            child: svgIcon(iconPath: AppIcons.google),
          ),
        ),
        Sized(width: 0.02,),
        Card(
          shadowColor: AppColors.primaryTextColor.withOpacity(0.25),
          color: AppColors.bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.bgColor,
                border: Border.all(color:AppColors.strokeColor)
            ),
            alignment: Alignment.center,
            height: 52.7,
            width: 67.19,
            child: svgIcon(iconPath: AppIcons.facebook),
          ),
        ),
      ],
    );
  }
}