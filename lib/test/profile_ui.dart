import 'package:cached_network_image/cached_network_image.dart';
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

    List iconsList = [
      const Icon(Icons.calendar_today_rounded),
      const Icon(Icons.person),
      const Icon(Icons.share),
      const Icon(Icons.star_rate),
      const Icon(Icons.login_outlined),
    ];

    double appHeight = MediaQuery.of(context).size.height;
    double appWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: appHeight,
        width: appWidth,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(90.0),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                      width: appWidth * 0.30,
                      fit: BoxFit.cover,
                      height: appWidth * 0.30,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          Icon(Icons.image, size: appWidth * 0.30),
                    ),
                  ),
                  const Text(
                    "SidKapse",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Order History",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 23,
                        color: Colors.black,
                      ),
                      Text(
                        listTitle[index],
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  );
                },
                itemCount: listTitle.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 8,
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
