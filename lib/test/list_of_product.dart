import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../utility/utility.dart';

class LIstOfProduct extends StatelessWidget {
  const LIstOfProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: appWidth * 0.012),
          child: Container(
            height: appHeight * 0.043,
            width: appWidth * .094,
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 0.70,
                  blurRadius: 7.5,
                  // blurStyle: BlurStyle.inner,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Image.asset('assets/lounges/icoun/list.png',
                color: Colors.white, width: 16, scale: 2),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: appWidth * 0.035),
            child: Image.asset('assets/lounges/icoun/notification.png',
                color: borderColor, width: 28, scale: 1),
          ),
        ],
        backgroundColor: backgroundColor,
        elevation: 0,
      ),
      body: Container(
        height: appHeight,
        width: appWidth,
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: appHeight * 0.02,
                  ),
                  Container(
                      padding: EdgeInsets.only(left: appWidth * 0.035),
                      height: appHeight * 0.054,
                      width: appWidth * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 0.70,
                            blurRadius: 7.5,
                            // blurStyle: BlurStyle.inner,
                            offset: const Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/lounges/icoun/search.png',
                              color: borderColor, width: 18, scale: 1),
                          SizedBox(
                            width: appWidth * 0.035,
                          ),
                          Container(
                            width: appWidth * 0.650,
                            child: TextFormField(
                              onTap: () {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Where do you want to go?",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: appHeight * 0.01,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          // padding: const EdgeInsets.fromLTRB(10, 14, 10, 7),
                          height: appHeight * 0.340,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: -2,
                                blurRadius: 5,
                                offset: const Offset(0, 6),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0)),
                                child: Container(
                                  height: appHeight * 0.180,
                                  width: appWidth,
                                  decoration: const BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0),
                                        topRight: Radius.circular(15.0)),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://lancasterpa.com/wp-content/uploads/2020/07/log-cabin-feature-logo-2.jpg",
                                    fit: BoxFit.fill,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) => Icon(
                                        Icons.image,
                                        size: appWidth * 0.21),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "My Lounge",
                                              style: TextStyle(
                                                  color: textGrayColor,
                                                  fontSize: 19,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              width: appWidth * 0.060,
                                              height: appWidth * 0.060,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                border: Border.all(
                                                    color: textGrayColor,
                                                    width: 1.7,
                                                    style: BorderStyle.solid),
                                              ),
                                              child: Image.asset(
                                                'assets/lounges/icoun/rupee.png',
                                                width: 4,
                                                scale: 3,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Renovation Date",
                                              style: TextStyle(
                                                  color: textGrayColor,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Choitram, Indore",
                                          style: TextStyle(
                                              color: textGrayColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "02 May 2022",
                                          style: TextStyle(
                                              color: textGrayColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "2.1 Km.",
                                          style: TextStyle(
                                              color: textGrayColor,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: appWidth * 0.090,
                                              height: appWidth * 0.090,
                                              decoration: BoxDecoration(
                                                color:
                                                    borderColor.withOpacity(.3),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: -2,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 6),
                                                  ),
                                                ],
                                              ),
                                              child: Image.asset(
                                                'assets/lounges/icoun/football.png',
                                                width: 20,
                                                scale: 2,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Container(
                                              width: appWidth * 0.090,
                                              height: appWidth * 0.090,
                                              decoration: BoxDecoration(
                                                color:
                                                    borderColor.withOpacity(.3),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: -2,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 6),
                                                  ),
                                                ],
                                              ),
                                              child: Image.asset(
                                                'assets/lounges/icoun/fitness.png',
                                                width: 20,
                                                scale: 2,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: appWidth * 0.090,
                                              height: appWidth * 0.090,
                                              decoration: BoxDecoration(
                                                color:
                                                    borderColor.withOpacity(.3),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: -2,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 6),
                                                  ),
                                                ],
                                              ),
                                              child: Image.asset(
                                                'assets/lounges/icoun/towal.png',
                                                width: 20,
                                                scale: 2,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Container(
                                              width: appWidth * 0.090,
                                              height: appWidth * 0.090,
                                              decoration: BoxDecoration(
                                                color:
                                                    borderColor.withOpacity(.3),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: -2,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 6),
                                                  ),
                                                ],
                                              ),
                                              child: Image.asset(
                                                'assets/lounges/icoun/toilet.png',
                                                width: 20,
                                                scale: 2,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Container(
                                              width: appWidth * 0.090,
                                              height: appWidth * 0.090,
                                              decoration: BoxDecoration(
                                                color:
                                                    borderColor.withOpacity(.3),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: -2,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 6),
                                                  ),
                                                ],
                                              ),
                                              child: Image.asset(
                                                'assets/lounges/icoun/food.png',
                                                width: 20,
                                                scale: 2,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            Container(
                                              width: appWidth * 0.090,
                                              height: appWidth * 0.090,
                                              decoration: BoxDecoration(
                                                color:
                                                    borderColor.withOpacity(.3),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: -2,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 6),
                                                  ),
                                                ],
                                              ),
                                              child: Image.asset(
                                                'assets/lounges/icoun/sofa.png',
                                                width: 20,
                                                scale: 2,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 6,
                                            ),
                                            TextButton(
                                              style: TextButton.styleFrom(
                                                primary:
                                                    borderColor, // This is a custom color variable
                                                textStyle: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(8.0),
                                                  ),
                                                ),
                                                elevation: 4,
                                                padding:
                                                    const EdgeInsets.all(9.0),
                                                backgroundColor: borderColor,
                                              ),
                                              onPressed: () {},
                                              child: const Text(
                                                "Book",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                  SizedBox(
                    height: appHeight * 0.050,
                  ),
                ],
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.98),
              child: Container(
                height: appHeight * 0.055,
                width: appWidth * .460,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: -2,
                      blurRadius: 5,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/lounges/icoun/fillter.png',
                            width: 28,
                            scale: 1,
                            color: borderColor,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Map",
                            style: TextStyle(
                                color: textGrayColor,
                                fontSize: 19,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1.4,
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/lounges/icoun/fillter.png',
                            width: 28,
                            scale: 1,
                            color: borderColor,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Filters",
                            style: TextStyle(
                                color: textGrayColor,
                                fontSize: 19,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          size: 25,
        ),
      ),
    );
  }
}
