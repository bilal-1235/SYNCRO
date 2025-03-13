

import 'package:flutter/material.dart';

import '../../../core/const/app_colors.dart';
import '../../../widgets/tesxt_widgets.dart';

class DividerRow extends StatelessWidget {
  final String title;
  const DividerRow({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.strokeColor,)),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: smallText(title: title,color: AppColors.tertiaryTextColor)),
        Expanded(child: Divider(color: AppColors.strokeColor,)),
      ],
    );
  }
}