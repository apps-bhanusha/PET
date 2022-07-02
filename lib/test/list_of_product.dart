import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pet/ui/map/locations.dart';
import 'package:pet/utility/utilitys.dart';

import '../utility/utility.dart';

class LIstOfProduct extends StatefulWidget {
  List<GetAllTurfData> getAllTurfData;
  LIstOfProduct({Key? key, required this.getAllTurfData}) : super(key: key);

  @override
  State<LIstOfProduct> createState() => _LIstOfProductState();
}

class _LIstOfProductState extends State<LIstOfProduct> {
List image =[
  "assets/lounges/icoun/football.png","assets/lounges/icoun/fitness.png"
];
List Facilites =[
  "assets/lounges/icoun/towal.png","assets/lounges/icoun/toilet.png","assets/lounges/icoun/food.png","assets/lounges/icoun/sofa.png"
];
  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: Container(
          height: appHeight * 0.05,
          width: appWidth * 0.05,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 0.40,
                blurRadius: 4.5,
                // blurStyle: BlurStyle.inner,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Image.asset('assets/lounges/icoun/list.png', color: Colors.white, width: 16, scale: 2.5),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: appWidth * 0.035),
            child: Image.asset('assets/lounges/icoun/notification.png', color: borderColor, width: 28, scale: 2.5),
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
                          Image.asset('assets/lounges/icoun/search.png', color: borderColor, width: 18, scale: 1),
                          SizedBox(
                            width: appWidth * 0.035,
                          ),
                          Container(
                            width: appWidth * 0.650,
                            child: TextFormField(
                              onTap: () {},
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Where do you want to go?",
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 16,
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
                      itemCount: widget.getAllTurfData.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          // padding: const EdgeInsets.fromLTRB(10, 14, 10, 7),
                          height: appHeight * 0.33,
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
                                    topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                                child: Container(
                                  height: appHeight * 0.160,
                                  width: appWidth,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: "${widget.getAllTurfData[index].tblTurfImages[0].imageUrl}",
                                    fit: BoxFit.fill,
                                    placeholder: (context, url) => Center(child: const CircularProgressIndicator()),
                                    errorWidget: (context, url, error) => Icon(Icons.image, size: appWidth * 0.21),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 120,
                                              child: Text(
                                                "${widget.getAllTurfData[index].turfName}",
                                                style: TextStyle(
                                                    color: textGrayColor,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                    overflow: TextOverflow.ellipsis),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Container(
                                              width: appWidth * 0.060,
                                              height: appWidth * 0.060,
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius: const BorderRadius.all(
                                                  Radius.circular(50.0),
                                                ),
                                                border: Border.all(
                                                    color: textGrayColor, width: 1.7, style: BorderStyle.solid),
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
                                                  color: textGrayColor, fontSize: 14, fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${widget.getAllTurfData[index].area}, ${widget.getAllTurfData[index].city}",
                                          style: TextStyle(
                                              color: textGrayColor, fontSize: 16, fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "${Utility.getFormatDate1(DateTime.parse(widget.getAllTurfData[index].maintenanceDate))}",
                                          style: TextStyle(
                                              color: textGrayColor, fontSize: 14, fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 120,
                                          child: Text(
                                            "${widget.getAllTurfData[index].turfAddress}",
                                            style: TextStyle(
                                                color: textGrayColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                overflow: TextOverflow.ellipsis),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 20),
                                          width: appWidth * 0.21,
                                          height: appWidth * 0.090,
                                          child: ListView.builder(shrinkWrap: true,scrollDirection: Axis.horizontal,itemCount: widget.getAllTurfData[index].tblTurfSports.length,itemBuilder: (context,index){

                                           return Row(
                                              children: [
                                                Container(
                                                  width: appWidth * 0.090,
                                                  height: appWidth * 0.090,
                                                  decoration: BoxDecoration(
                                                    color: borderColor.withOpacity(.3),
                                                    borderRadius: const BorderRadius.all(
                                                      Radius.circular(50.0),
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
                                                  child: Image.asset(
                                                    '${image[index]}',
                                                    width: 20,
                                                    scale: 2,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 6,
                                                ),
                                            //     Container(
                                            //       width: appWidth * 0.090,
                                            //       height: appWidth * 0.090,
                                            //       decoration: BoxDecoration(
                                            //         color: borderColor.withOpacity(.3),
                                            //         borderRadius: const BorderRadius.all(
                                            //           Radius.circular(50.0),
                                            //         ),
                                            //         boxShadow: [
                                            //           BoxShadow(
                                            //             color: Colors.grey.withOpacity(0.2),
                                            //             spreadRadius: -2,
                                            //             blurRadius: 5,
                                            //             offset: const Offset(0, 6),
                                            //           ),
                                            //         ],
                                            //       ),
                                            //       child: Image.asset(
                                            //         'assets/lounges/icoun/fitness.png',
                                            //         width: 20,
                                            //         scale: 2,
                                            //       ),
                                            //     ),
                                              ],
                                            );

                                          }),
                                        ),
                                        Container(
                                          width: appWidth * 0.40,
                                          height: appWidth * 0.090,
                                          child: ListView.builder(shrinkWrap: true,scrollDirection: Axis.horizontal,itemCount: widget.getAllTurfData[index].tblTurfFacilities.length,itemBuilder: (context,index){

                                            return Row(
                                              children: [
                                                Container(
                                                  width: appWidth * 0.090,
                                                  height: appWidth * 0.090,
                                                  margin: EdgeInsets.only(right: 5),
                                                  decoration: BoxDecoration(
                                                    color: borderColor.withOpacity(.3),
                                                    borderRadius: const BorderRadius.all(
                                                      Radius.circular(50.0),
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
                                                  child: Image.asset(
                                                    '${Facilites[index]}',
                                                    width: 20,
                                                    scale: 2,
                                                  ),
                                                ),


                                              ],
                                            );

                                          }),
                                        ),


                                        Container(
                                          width:  appWidth * 0.15,
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              primary: borderColor, // This is a custom color variable
                                              textStyle: const TextStyle(
                                                color: Colors.white,
                                              ),
                                              shape: const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0),
                                                ),
                                              ),
                                              elevation: 4,
                                              padding: const EdgeInsets.all(9.0),
                                              backgroundColor: borderColor,
                                            ),
                                            onPressed: () {},
                                            child: const Text(
                                              "Book",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
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
                width: appWidth * .50,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
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
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Row(
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
                              style: TextStyle(color: boxBorderC, fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
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
                            style: TextStyle(color: boxBorderC, fontSize: 18, fontWeight: FontWeight.w600),
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
