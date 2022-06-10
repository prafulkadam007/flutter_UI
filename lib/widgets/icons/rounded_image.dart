import 'package:flutter/material.dart';

enum ImageType {
  network,
  asset,
}

class RoundedImage extends StatelessWidget {
  final Color bgColor;
  final double size;
  final ImageType imageType;
  final String? imageUrl;
  final String? assetPath;

  const RoundedImage({
    Key? key,
    this.bgColor = Colors.grey,
    required this.size,
    this.imageUrl,
    this.assetPath,
    required this.imageType,
  }) : super(key: key);

  ImageProvider _renderImage() {
    if (imageType == ImageType.network) {
      return NetworkImage(imageUrl!);
    } else {
      return AssetImage(assetPath!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bgColor,
        image: DecorationImage(
          image: _renderImage(),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(size / 2),
        ),
        border: Border.all(
          color: Colors.black26,
          width: 2.0,
        ),
      ),
    );
  }
}
