import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../resources/values_manager.dart';

class Button extends StatelessWidget {
  final String title;
  final TextStyle? titlestyle;
  final Function? onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? buttonstylepadding;
  final Color? primaryColor;
  final Color? bgColor;

  final Size? size;
  const Button(
      {Key? key,
      required this.title,
      this.onPressed,
      this.titlestyle,
      this.size,
      this.buttonstylepadding,
      this.padding,
      this.primaryColor,
      this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: TextButton(
        key: key,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(8.0),
          child: AutoSizeText(
            title,
            style: titlestyle ?? const TextStyle(color: Colors.white),
            minFontSize: 18,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        style: TextButton.styleFrom(
          minimumSize: size ?? Size(MediaQuery.of(context).size.width - 50, 50),
          primary: primaryColor ?? Colors.white, //Text Color
          padding: buttonstylepadding ?? EdgeInsets.all(width * 0.03),
          backgroundColor: bgColor ?? Colors.black, //Button Background Color
        ),
        onPressed: () {
          if (onPressed != null) {
            onPressed!();
          }
        },
      ),
    );
  }
}
