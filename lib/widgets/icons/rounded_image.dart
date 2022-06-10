import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final Color bgColor;
  final double size;
  final DecorationImage image;

  const RoundedImage({
    Key? key,
    this.bgColor = Colors.grey,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: bgColor,
        image: image,
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
