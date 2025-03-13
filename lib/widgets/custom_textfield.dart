import 'package:flutter/material.dart';
import 'package:syncro/core/const/app_colors.dart';
import 'package:syncro/widgets/custom_sized.dart';
import 'package:syncro/widgets/svg_icon.dart';
import 'package:syncro/widgets/tesxt_widgets.dart';
import '../core/assets/app_icons.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String title;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isPassword;
  final FormFieldValidator validate;
  final bool isDense ;
  final bool isMaxLines;
  final VoidCallback ? onTap ;
  const CustomTextField(
      {required this.controller,
        required this.title,
        required this.hintText,
        this.keyboardType = TextInputType.text,
        required this.validate,
        this.obscureText = false ,
        this.isDense =false,
        this.isMaxLines = false,
        this.isPassword = false,
        this.onTap,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mediumText(title: title),
        Sized(height: 0.01,),
        TextFormField(
          onTap: onTap,
          maxLines: isMaxLines == true ? 5: 1,
          obscuringCharacter: '*',
          obscureText: obscureText,
          validator: validate,
          style: TextWidgets.mediumTextStyle(color: AppColors.secondaryTextColor),
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            suffix: isPassword == true ? svgIcon(iconPath: AppIcons.eye) : Sized(),
            isDense: isDense,
            hintStyle: TextWidgets.mediumTextStyle(color: AppColors.secondaryTextColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:  BorderSide(color: AppColors.strokeColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.strokeColor, width: 2),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.errorColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.strokeColor, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
