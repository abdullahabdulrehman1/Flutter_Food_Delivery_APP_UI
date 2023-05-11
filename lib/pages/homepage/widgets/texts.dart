import 'package:flutter/material.dart';

import '../../../util/dimensions.dart';
// import 'package:flutter/cupertino.dart';

class Bigtext extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final FontWeight? fontWeight;
  final TextOverflow overFlow;
  // final double height;
  const Bigtext(
      {Key? key,
      this.color = const Color(0xff599c5d),
      required this.text,
      this.size = 0,
      this.fontWeight = FontWeight.w800,
      // this.height = 1.2;
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        overflow: overFlow,
        maxLines: 1,
        style: TextStyle(
            fontFamily: 'Roboto',
            color: color,
            // height: height,
            fontSize: size == 0 ? Dimension.font20 : size,
            fontWeight: fontWeight));
  }
}
