import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconView extends StatelessWidget {
  final String icon;
  final double? height;
  final double? width;
  final Color? color;
  const IconView({
    super.key,
    required this.icon,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) => SvgPicture.asset(
        icon,
        colorFilter: color != null
            ? ColorFilter.mode(
                color!,
                BlendMode.srcIn,
              )
            : null,
        height: height,
        width: width,
      );
}
