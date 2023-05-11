// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../foodpagebody/Homepage.dart';
import '../../../util/dimensions.dart';
import 'iconsandtest.dart';
import 'smalltext.dart';

class Appcolumn extends StatelessWidget {
  final String text;

  const Appcolumn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: Dimension.height10,
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              fontSize: Dimension.font20),
        ),
        SizedBox(
          height: Dimension.height10,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: Homepage.back,
                  size: 15,
                );
              }),
            ),
            SizedBox(
              width: Dimension.width10,
            ),
            Smalltext(text: "4.5"),
            SizedBox(
              width: Dimension.width10,
            ),
            Smalltext(text: "1289"),
            SizedBox(
              width: Dimension.width10 / 4,
            ),
            Smalltext(
              text: "Comments",
              overFlow: TextOverflow.ellipsis,
            )
          ],
        ),
        SizedBox(
          height: Dimension.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Iconandtext(
                icon: Icons.circle_sharp,
                iconColor: Homepage.starcolor,
                colour: Colors.black45,
                text: "Normal"),
            Iconandtext(
                icon: Icons.location_on,
                iconColor: Homepage.back,
                colour: Colors.black45,
                text: "32 km"),
            const Iconandtext(
                icon: Icons.access_time_filled_sharp,
                iconColor: Colors.red,
                colour: Colors.black45,
                text: "32 min")
          ],
        )
      ],
    );
  }
}
