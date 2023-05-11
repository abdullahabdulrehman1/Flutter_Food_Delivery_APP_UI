import 'package:flutter/material.dart';

// import '../../util/dimensions.dart';
// import '../';
class Smalltext extends StatelessWidget {
  final Color? color;
  final FontWeight? fontWeight;
  final String text;
  final double? size;
  final TextOverflow overFlow;
  final double height;
  Smalltext(
      {Key? key,
      this.color = const Color(0xff5B5A5A),
      required this.text,
      this.size =12,
      this.fontWeight = FontWeight.bold,
      this.height = 1.2,
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
          height: height,
          fontSize: size,
          fontWeight: fontWeight,
        ));
  }
}
