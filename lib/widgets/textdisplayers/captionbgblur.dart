import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../resources/values_manager.dart';

class CaptionBgblur extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;

  const CaptionBgblur({
    Key? key,
    required this.title,
    this.titleStyle

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225).withOpacity(0.4)),
      child: AutoSizeText(
        title,
        minFontSize: AppSize.s20,
        textAlign: TextAlign.center,
        style: titleStyle ?? TextStyle(
          fontSize: width * 0.08,
          fontStyle: FontStyle.normal,
        ).copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
