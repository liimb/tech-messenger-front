import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    this.width,
    this.height,
    this.color,
    this.assetName,
    this.icon,
  });

  final String? assetName;
  final IconData? icon;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return assetName != null
        ? SvgPicture.asset(
            assetName!,
            width: width,
            height: height,
            colorFilter: color != null
                ? ColorFilter.mode(color!, BlendMode.srcIn)
                : null,
          )
        : Icon(icon, size: width, color: color);
  }
}
