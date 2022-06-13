import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final double margin;
  final double radius;
  final double padding;
  final Widget child;

  const CardView({
    Key? key,
    required this.margin,
    required this.radius,
    required this.padding,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(margin),
      color: Colors.white,
      // elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}
