import 'package:flutter/material.dart';

import '../../../util/dimensions.dart';
import 'smalltext.dart';

class Iconandtext extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;
  final Color colour;
  // final TextOverflow overflow;
  // final  OverflowBox overflowBox;
  // const Iconandtext({super.key});

  const Iconandtext({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.colour ,
    // this.overflowBox = overflowBox.maxWidth(10),
    // this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimension.iconsize24,
        ),
        SizedBox(
          width: Dimension.width10 / 10,
        ),
        Smalltext(
          text: text,
          color: colour,
        ),
      ],
    );
  }
}
