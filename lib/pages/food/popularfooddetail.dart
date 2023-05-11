// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../homepage/foodpagebody/Homepage.dart';
import '../../util/dimensions.dart';
import '../homepage/widgets/Appcolumn.dart';
import '../homepage/widgets/Expandabletext.dart';
import '../homepage/widgets/texts.dart';
import 'app_icon_food.dart';

class Popularfooddetail extends StatelessWidget {
  const Popularfooddetail({super.key});
  static final Color maincolor = const Color(0xff066615);
  static final Color textcolor = const Color(0xff000000);
  static final Color starcolor = const Color(0xffFFAF51);
  static final Color back = const Color(0xff599c5d);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //background image
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimension.popularfoodcover,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/Images/Frame 2 (2).png"))),
              ),
            ),
            //Iconwidget
            Positioned(
                left: Dimension.width20,
                right: Dimension.width20,
                top: Dimension.height45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Appicon(
                      icon: Icons.arrow_back_ios,
                      // iconColor: Popularfooddetail.back,
                      backgroundcolor: Popularfooddetail.back,
                    ),
                    Appicon(
                      icon: Icons.shopping_cart_outlined,
                      // iconColor: Popularfooddetail.back,
                      backgroundcolor: Popularfooddetail.back,
                    ),
                  ],
                )),

            //Introduction of food
            Positioned(
                left: 0,
                // height: Dimension.height45 * 5,
                right: 0,
                bottom: 0,
                top: Dimension.popularfoodcover - 20,
                child: Container(
                    padding: EdgeInsets.only(
                        left: Dimension.width20, right: Dimension.width20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Appcolumn(
                          text: "Chinese Side",
                        ),
                        SizedBox(
                          height: Dimension.height20,
                        ),
                        Bigtext(
                          text: "Introduce",
                          color: Colors.black54,
                        ),
                        SizedBox(
                          height: Dimension.height20,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            // height:,
                            child: Expandabletext(
                                text:
                                    "Video provides a powe When yo  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove"),
                          ),
                        )
                      ],
                    ))),
            //Expandable text widget
          ],
        ),

        //Bottom navation
        bottomNavigationBar: Container(
          height: Dimension.bottomheightbar,
          padding: EdgeInsets.only(
              top: Dimension.height30,
              bottom: Dimension.height30,
              left: Dimension.width20,
              right: Dimension.width20),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.radius20 * 2),
              topRight: Radius.circular(Dimension.radius20 * 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: Dimension.height20,
                    bottom: Dimension.height20,
                    left: Dimension.width20,
                    right: Dimension.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Homepage.back,
                ),
                child: Row(children: [
                  Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: Dimension.width10 / 2,
                  ),
                  Bigtext(
                    text: "0",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: Dimension.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  )
                ]),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: Dimension.height20,
                    bottom: Dimension.height20,
                    left: Dimension.width20,
                    right: Dimension.width20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimension.radius20),
                  color: Homepage.back,
                ),
                child: Bigtext(
                  text: "\$10 | Add to Cart",
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ));
  }
}
