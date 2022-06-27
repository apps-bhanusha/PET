import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<String> listTitle = [
      "My Bookings",
      "Help & Support",
      "Invite a friend",
      "Rate us",
      "Logout",
    ];

    List<String> iconsList = [
      "assets/lounges/icoun/calendar check.png",
      "assets/lounges/icoun/custmer servies.png",
      "assets/lounges/icoun/conection.png",
      "assets/lounges/icoun/star.png",
      "assets/lounges/icoun/logout.png"
    ];

    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: appHeight,
        width: appWidth,
        padding: EdgeInsets.fromLTRB(20, appHeight * .225, 20, 0),
        child: Center(
          child: Column(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      width: appWidth * 0.27,
                      fit: BoxFit.cover,
                      height: appWidth * 0.27,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          Icon(Icons.image, size: appWidth * 0.30),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "SidKapse",
                    style: TextStyle(
                        color: Colors.black87.withOpacity(0.75),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "0987654321",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: appHeight * 0.030,
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        iconsList[index],
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        listTitle[index],
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  );
                },
                itemCount: listTitle.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 18,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
