import 'package:flutter/material.dart';

import '../foodpagebody/Homepage.dart';
import '../../../util/dimensions.dart';
import 'smalltext.dart';

class Expandabletext extends StatefulWidget {
  final String text;
  final FontWeight? fontweight;

  const Expandabletext({
    super.key,
    required this.text,
    this.fontweight = FontWeight.bold,
  });

  @override
  State<Expandabletext> createState() => _ExpandabletextState();
}

class _ExpandabletextState extends State<Expandabletext> {
  late String firstHalf;
  late String secondHalf;
  double text = Dimension.screenHeight ;
  // double textlimit = text;
  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > text) {
      firstHalf = widget.text.substring(0, text as int?);
      secondHalf = widget.text.substring(text as int, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? Text(firstHalf)
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf)),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Smalltext(
                          height: 1.8,
                          color: Homepage.back,
                          size: Dimension.font16,
                          text: flag ? "ShowMore" : "Hide"),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                ),
              ],
            ),
    );
  }
}
