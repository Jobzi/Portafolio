import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'dart:math' show Random;

class ImageCached extends StatelessWidget {
  const ImageCached({Key key, this.url, this.height, this.width, this.fit})
      : super(key: key);
  final String url;
  final height, width;
  final BoxFit fit;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: (url == null || url.isEmpty) ? getImageRandom() : url,
      height: height,
      width: width,
      placeholder: (context, url) => Container(
        child: Center(child: CircularProgressIndicator()),
      ),
      errorWidget: (context, url, error) =>
          Container(child: Center(child: CircularProgressIndicator())),
      fit: fit,
    );
  }

  String getImageRandom() {
    Random value = Random();
    List<String> images = [
      "https://cutt.ly/zj9Jyum",
      "https://cutt.ly/Fj9KqmO",
      "https://cutt.ly/rj9KFjS",
      "https://cutt.ly/hj9Lsru"
    ];
    var index = value.nextInt(images.length);
    return images[index];
  }
}
