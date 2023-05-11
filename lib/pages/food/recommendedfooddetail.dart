// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../util/dimensions.dart';
import '../homepage/foodpagebody/Homepage.dart';
import '../homepage/widgets/Expandabletext.dart';
import '../homepage/widgets/texts.dart';
import 'app_icon_food.dart';

class Recomendedfooddetail extends StatelessWidget {
  const Recomendedfooddetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: Dimension.height30 * 3,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Appicon(
                    icon: Icons.clear,
                    iconColor: Colors.black,
                  ),
                  Appicon(
                    icon: Icons.shopping_cart_outlined,
                    iconColor: Colors.black,
                  ),
                ]),

            expandedHeight: Dimension.height30 * 10 * 1.5,

            bottom: PreferredSize(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimension.radius20),
                          topRight: Radius.circular(Dimension.radius20))),

                  child: Center(
                      child: Bigtext(
                    size: Dimension.font26,
                    text: "Sliver App bar",
                  )),
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.only(
                    top: 5,
                    bottom: 10,
                  ),
                  width: double.maxFinite,
                ),
                // ignore: prefer_const_constructors
                preferredSize: Size.fromHeight(Dimension.height20)),
            pinned: true,
            // scrolledUnderElevation: BorderSide.strokeAlignCenter,
            backgroundColor: Homepage.back,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/Images/Frame 2 (2).png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: Dimension.height20,
                    left: Dimension.width20,
                    right: Dimension.width20),
                child: Expandabletext(
                    text:
                        "Video provides a powe When Video provides a powe When yo  powerful way to help you prove  pos a powe When yo  powerful way to help you prove  powerful way to help ys a powe When yo  powerful way to help you prove  powerful way to help ywerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerfuVideo provides a powe When yo  powerful way to help you prove  pos a powe When yo  powerful way to help you prove  powerful way to help ys a powe When yo  powerful way to help you prove  powerful way to help ywerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you provel way to help you prove  powerful way to help you proveyo  powerfuVideo provides a powe When yo  powerful way to help you prove  pos a powe When yo  powerful way to help you prove  powerful way to help ys a powe When yo  powerful way to help you prove  powerful way to help ywerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you provel way to help you prove  pos a powe When yo  powerful way to help you prove  powerful way to help ys a powe When yo  powerful way to help you prove  powerful way to help ywerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you proveVideo provides a powe When yo  powerful way to help you prove  pos a powe When yo  powerful way to help you prove  powerful way to help ys a powe When yo  powerful way to help you prove  powerful way to help ywerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you proveVideo provides a powe When yo  powerful way to help you prove  pos a powe When yo  powerful way to help you prove  powerful way to help ys a powe When yo  powerful way to help you prove  powerful way to help ywerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you proveVideo provides a powe When yo  powerful way to help you prove  pos a powe When yo  powerful way to help you prove  powerful way to help ys a powe When yo  powerful way to help you prove  powerful way to help ywerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove  powerful way to help you prove"),
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimension.width20 * 2.3,
                right: Dimension.width20 * 2.3,
                top: Dimension.height10,
                bottom: Dimension.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Appicon(
                  icon: Icons.remove,
                  iconColor: Homepage.opacitycolor,
                  backgroundcolor: Homepage.back,
                  size: Dimension.iconsize24,
                ),
                Bigtext(
                  text: " \$12.88 " + " X " + " 0 ",
                  color: Homepage.textcolor,
                  size: Dimension.font26,
                ),
                Appicon(
                  icon: Icons.add,
                  size: Dimension.iconsize24,
                  iconColor: Homepage.opacitycolor,
                  backgroundcolor: Homepage.back,
                )
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
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
          )
        ],
      ),
    );
  }
}
