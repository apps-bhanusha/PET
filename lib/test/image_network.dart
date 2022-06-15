import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircularNetworkedImage extends StatelessWidget {
  final String url;
  final double width;

  CircularNetworkedImage({required this.url, required this.width});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: width,
      imageBuilder: (context, imageProvider) {
        return Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 2), image: DecorationImage(image: imageProvider, fit: BoxFit.contain)),
        );
      },
      errorWidget: (context, url, _) {
        return Icon(
          Icons.image_rounded,
          size: width,
        );
      },
      // progressIndicatorBuilder: (context, url, progress) {
      //   return Icon(
      //     Icons.image_rounded,
      //     size: width,
      //   );
      // },
      placeholder: (context, url) {
        return Icon(
          Icons.image_rounded,
          size: width,
        );
      },
    );
  }
}
