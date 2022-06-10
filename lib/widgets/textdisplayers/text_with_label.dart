import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextWithLabel extends StatelessWidget {
  final String title;
  final TextStyle? titlestyle;
  final String? desc;
  final TextStyle? descStyle;
  final String? label;
  final TextStyle? labelStyle;
  final TextAlign? align;

  const TextWithLabel({
    Key? key,
    required this.title,
    this.titlestyle,
    this.desc,
    this.descStyle,
    this.label,
    this.labelStyle,
    this.align,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
    double width = MediaQuery.of(context).size.width;

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: align == TextAlign.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: AutoSizeText(
              label!,
              maxLines: 1,
              style: labelStyle ??
                  TextStyle(fontSize: width * 0.03, color: Colors.black54),
            ),
          ),
        AutoSizeText(
          title,
          maxLines: 2,
          style: titlestyle ??
              TextStyle(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.w500,
                  height: 1.5),
        ),
        if (desc != null)
          AutoSizeText(
            desc!,
            maxLines: 2,
            style: descStyle ??
                TextStyle(
                    color: Colors.black,
                    fontSize: (width * 0.04),
                    fontWeight: FontWeight.w400,
                    height: 2),
          ),
      ],
    );
  }
}
