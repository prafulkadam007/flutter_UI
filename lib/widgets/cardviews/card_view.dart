import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/values_manager.dart';

class CardView extends StatelessWidget {
  final double? margin;
  final double? radius;
  final double? padding;
  final Widget child;

  const CardView({
    Key? key,
    this.margin,
    this.radius,
    this.padding,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Card(
      margin: EdgeInsets.all(margin ?? (width * 0.05) / 3),
      color: Colors.white,
      // elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? AppSize.s15),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? (width * 0.06) / 3),
        child: child,
      ),
    );
  }
}
