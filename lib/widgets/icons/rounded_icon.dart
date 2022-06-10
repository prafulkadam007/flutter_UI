import 'package:flutter/material.dart';

class RoundedIcon extends StatelessWidget {
  final Icon icon;
  final Color bgColor;
  final double size;

  const RoundedIcon({
    Key? key,
    required this.icon,
    this.bgColor = Colors.transparent,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: icon,
      ),
    );
  }
}
