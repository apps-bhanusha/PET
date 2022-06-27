import 'package:flutter/material.dart';

class MyBookingOrderScreen extends StatelessWidget {
  const MyBookingOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 200,
            //   width: 300,
            //   child: ClipPath(
            //       clipper: MyClipper(),
            //       child: Container(
            //         height: 200,
            //         width: 500,
            //         alignment: Alignment.center,
            //         color: Colors.red,
            //         child: const Text("abc"),
            //       )),
            // ),
          ],
        ),
      ),
    );
  }
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var smallLineLength = size.width / 20;
//     const smallLineHeight = 20;
//     var path = Path();
//
//     path.lineTo(0, size.height);
//     for (int i = 1; i <= 40; i++) {
//       if (i % 2 == 0) {
//         path.lineTo(smallLineLength * i, size.height / 1);
//       } else {
//         path.lineTo(smallLineLength * i, size.height - smallLineHeight);
//       }
//     }
//     path.lineTo(size.width, 0);
//     canvas.rotate(math.atan2(end.dy, end.dx));
//     path.close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper old) => false;
// }
