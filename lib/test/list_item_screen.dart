import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../utility/utility.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: buttonColor, size: 24),
        title: const Text(
          "Order History",
          style: TextStyle(
              color: buttonColor, fontSize: 21, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xFFF1F1F1),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        height: appHeight,
        width: appWidth,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                padding: const EdgeInsets.fromLTRB(10, 14, 10, 7),
                height: appHeight * 0.180,
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
                child: Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                            width: appWidth * 0.21,
                            fit: BoxFit.cover,
                            height: appWidth * 0.21,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.image, size: appWidth * 0.21),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MaterialButton(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                          ),
                          padding: EdgeInsets.zero,
                          color: index % 4 == 0 ? buttonColor : Colors.grey,
                          onPressed: () {},
                          child: const Text(
                            "Booking",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tianjin Warner International Lounge",
                          style: TextStyle(
                              color: buttonColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/lounges/icoun/watch.png',
                                width: 21, color: Colors.black),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              "8:24 AM",
                              style: TextStyle(
                                  color: buttonColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/lounges/icoun/calendar 1.png',
                              width: 19,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              "2022 - Mar - 20",
                              style: TextStyle(
                                  color: buttonColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/lounges/icoun/map.png',
                                width: 19, color: Colors.black),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              "Address",
                              style: TextStyle(
                                  color: buttonColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/lounges/icoun/conection.png',
                              width: 19,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              "Share",
                              style: TextStyle(
                                  color: buttonColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
