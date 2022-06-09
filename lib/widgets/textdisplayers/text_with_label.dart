import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextWithLabel extends StatelessWidget {
  final String title;
  final TextStyle? titlestyle;
  final String desc;
  final TextStyle? descStyle;
  
  const TextWithLabel({
    Key? key,
    required this.title,
    this.titlestyle,
    required this.desc,
    this.descStyle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
    double width = MediaQuery.of(context).size.width;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            title,
            maxLines: 1,
            style: titlestyle ??
                TextStyle(
                    fontSize: width * 0.04, fontWeight: FontWeight.w500),
          ),
           AutoSizeText(
            desc,
            maxLines: 1,
            style: descStyle ??
                TextStyle(
                    fontSize: (width * 0.04),
                    fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
