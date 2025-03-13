


import 'package:flutter/material.dart';

import '../../../../core/assets/app_icons.dart';
import '../../../../widgets/custom_sized.dart';
import '../../../../widgets/svg_icon.dart';
import '../../../../widgets/tesxt_widgets.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        svgIcon(iconPath: AppIcons.appIcon),
        Sized(width: 0.009,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            largeText(title: 'SYNCRO'),
            smallText(title: 'SCREEN TO SCREEN',fontSize: 10)
          ],
        )
      ],
    );
  }
}