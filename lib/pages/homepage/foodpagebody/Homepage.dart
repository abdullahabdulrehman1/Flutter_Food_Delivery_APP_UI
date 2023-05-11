import 'package:flutter/material.dart';

import '../../../util/dimensions.dart';
import 'foodpagebody.dart';
import '../widgets/smalltext.dart';
import '../widgets/texts.dart';

class Homepage extends StatefulWidget {
  static final Color maincolor = const Color(0xff066615);
  static final Color textcolor = const Color(0xff000000);
  static final Color starcolor = const Color(0xffFFAF51);
  static final Color back = const Color(0xff599c5d);

  //  final Color opacitycolor = const Color(0xffFFFFFF);
  static final Color opacitycolor = const Color(0xffFFFFFF);

  const Homepage({Key? key}) : super(key: key);
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Header
        Container(
            margin: EdgeInsets.only(
                top: Dimension.height15, bottom: Dimension.height15),
            padding: EdgeInsets.only(
                left: Dimension.width20, right: Dimension.width20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // border: Border.all(),
              // color: Homepage.opacitycolor,
              // gradient: Gradiant.Color(0xff353ad5),
              // color: Color(0xddc2d58b),
            ),
            // alignment: Alignment.center,
            //

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  //  decoration: Decoration( TextStyle(fontWeight: FontWeight.bold)),
                  Bigtext(
                    text: "PAKISTAN",
                    overFlow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      Smalltext(text: "KARACHI", color: Colors.black54),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ]),
                Center(
                    child: Container(
                        child: Icon(
                          Icons.search,
                          color: Color(0xff3f2b95),
                          size: Dimension.iconsize24,
                        ),
                        width: Dimension.width45,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius20),
                            color: Homepage.back),
                        height: Dimension.height45))
              ],
            )),
        //Crousel
        Expanded(
            child: SingleChildScrollView(
          child: Foodpagebody(),
        ))
        //
      ],
    ));
  }
}
