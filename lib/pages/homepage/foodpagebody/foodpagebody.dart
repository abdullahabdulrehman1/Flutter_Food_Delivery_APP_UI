import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';
import '../../../util/dimensions.dart';
import '../widgets/iconsandtest.dart';
import '../widgets/smalltext.dart';
import '../widgets/texts.dart';
// import 'widgets/texts.dart';

class Foodpagebody extends StatefulWidget {
  const Foodpagebody({super.key});

  @override
  State<Foodpagebody> createState() => _FoodpagebodyState();
}

class _FoodpagebodyState extends State<Foodpagebody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var currentPageValue = 0.0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
        // print(currentPageValue);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: Dimension.pageView,
            child: PageView.builder(
                controller: pageController,
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, position) {
                  if (position == currentPageValue.floor()) {}
                  return _buildpageitem(position);
                })),

        // DOT INTDICATOR********************************
        DotsIndicator(
          dotsCount: 10,
          position: currentPageValue,
          onTap: (IndexedSlot) {
            setState(() => currentPageValue = IndexedSlot);
          },
          // DOT INDICATOR DECORATOR_**********************
          decorator: DotsDecorator(
            color: Homepage.starcolor,
            activeColor: Homepage.back,
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: Dimension.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: 30, bottom: 20),
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Bigtext(
              text: "Popular",
              color: Homepage.textcolor,
            ),
            SizedBox(
              width: Dimension.width10,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 3),
                child: Bigtext(text: "-", color: Colors.black26)),
            SizedBox(
              // margin: EdgeInsets.only(bottom: Dimension.height10 / 2),
              width: Dimension.width10,
            ),
            Container(
                margin: EdgeInsets.only(bottom: 2),
                child: Smalltext(text: "Food pairing", color: Colors.black26)),
          ]),
        ),
        //listview

        // height: 900,
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),

            // BouncingScrollPhysics(),),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: ((context, index) {
              return Container(
                  margin: EdgeInsets.only(
                      left: Dimension.width20,
                      right: Dimension.width20,
                      bottom: Dimension.height10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //IMAGE SECTION_________$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
                      Container(
                        width: Dimension.listViewImagesize,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimension.radius20),
                            color: index.isEven
                                ? const Color(0xff599c5d)
                                : const Color(0xff9294cc),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/Images/Frame 2 (2).png"))),
                      ),
                      //TExt CONTAINER****************************************
                      Expanded(
                        child: Container(
                          // margin: EdgeInsets.only(right: Dimension.width10),
                          height: Dimension.listViewTextContsize,
                          // width: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(Dimension.radius20),
                                  bottomLeft:
                                      Radius.circular(Dimension.radius20))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: Dimension.width10,
                                // right: Dimension.width10,
                                top: Dimension.height10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Bigtext(
                                  text: "Nutritious fruit meal in China",
                                  overFlow: TextOverflow.ellipsis,
                                  color: index.isEven
                                      ? Colors.black
                                      : Colors.green,
                                ),
                                SizedBox(
                                  height: Dimension.height10,
                                ),
                                Smalltext(
                                  text: "With Chinese Charactistics and Taste",
                                  color: Colors.black45,
                                ),
                                SizedBox(
                                  height: Dimension.height10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Iconandtext(
                                        icon: Icons.circle_sharp,
                                        colour: Colors.black38,
                                        iconColor: Homepage.starcolor,
                                        text: "Normal"),
                                    Iconandtext(
                                        colour: Colors.black38,
                                        icon: Icons.location_on,
                                        iconColor: Homepage.back,
                                        text: "32 km"),
                                    const Iconandtext(
                                        colour: Colors.black38,
                                        icon: Icons.access_time_filled_sharp,
                                        iconColor: Colors.red,
                                        text: "32 min")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ));
            })),
      ],
    );
  }

// $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

//ANIMATED SLIDER CODE_____________________________________________
  //scale factor
  final double _scaleFactor = .8;
  //view page height
  final double _height = Dimension.pageViewContainer;
  Widget _buildpageitem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == currentPageValue.floor()) {
      var currScale = 1 - (currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() - 1) {
      var currScale = 1 - (currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1.0, currScale, 1.0)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }
    return Transform(
        transform: matrix,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
                child: Align(
                    child: Stack(children: [
              Container(
                height: Dimension.pageViewContainer,
                width: MediaQuery.of(context).size.width - 20,
                margin: EdgeInsets.only(
                    left: Dimension.width10, right: Dimension.width10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.radius30),
                    color: index.isEven
                        ? const Color(0xff599c5d)
                        : const Color(0xff9294cc),

                    // image: DecorationImage(image: Image.asset('assets/Images/main.png')),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 9),
                          blurRadius: 7,
                          color: Colors.black26)
                    ],
                    image: const DecorationImage(
                        image: AssetImage("assets/Images/Frame 2 (2).png"),
                        fit: BoxFit.cover)),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: Dimension.pageTextContainer,
                    // width: 420,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                        left: Dimension.width40,
                        right: Dimension.width40,
                        bottom: Dimension.height10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                      color: Colors.white,
                      // color: Colors.white78,
                      // image: DecorationImage(image: Image.asset('assets/Images/main.png')),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 5.0,
                            color: Color(0xffe8e8e8)),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, 0),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(5, 0),
                        )
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                          top: Dimension.height15,
                          right: Dimension.width15,
                          left: Dimension.width15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Biryani",
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
                      ),
                    ),
                  ))
            ])))));
  }
}
