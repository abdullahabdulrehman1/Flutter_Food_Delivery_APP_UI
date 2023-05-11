import 'package:flutter/material.dart';

import '../../util/dimensions.dart';

class Appicon extends StatelessWidget {
  final IconData icon;
  final Color backgroundcolor;
  final Color iconColor;
  final double size;

  const Appicon({
    Key? key,
    required this.icon,
    this.backgroundcolor = const Color(0xfffcf4e4),
    this.iconColor = const Color(0xffffffff),
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundcolor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimension.iconsize16,
      ),
    );
  }
}
