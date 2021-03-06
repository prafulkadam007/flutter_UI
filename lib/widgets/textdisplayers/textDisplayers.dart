import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'bigheader.dart';
import 'captionbgblur.dart';
import 'content.dart';
import 'header.dart';

class TextDisplayers extends StatelessWidget {
  late bool bigHeader = false;
  late bool captionBgBlur = false;
  late bool content = false;
  late bool header = false;

  late String title;
  late TextStyle? titlestyle;

  late String? body;
  late TextStyle? bodystyle;
  late TextStyle? readmorestyle;

  late String subTitle;
  late Color? subTitleColor;
  late Color? titleColor;
  late Image image;

  TextDisplayers({
    Key? key,
  }) : super(key: key);

  TextDisplayers.bigHeader({Key? key, required this.title, required this.image, this.titlestyle})
      : bigHeader = true,
        super(key: key);
  TextDisplayers.captionBgBlur({Key? key})
      : captionBgBlur = true,
        super(key: key);
  TextDisplayers.content({
    Key? key,
    required this.body,
    required this.title,
    this.bodystyle,
    this.readmorestyle,
    this.titlestyle,
  })  : content = true,
        super(key: key);

  TextDisplayers.header({
    Key? key,
    required this.title,
  })  : header = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (bigHeader) {
      return BigHeader(
        image: image,
        title: title,
        titlestyle:
            titlestyle ?? const TextStyle(color: Colors.black, fontSize: 20),
      );
    }
    if (captionBgBlur) {
      return const CaptionBgblur(title: "Instrumental in Past... \nInvested in Future",);
    }

    if (content) {
      return Content(
        body: body ?? 'title',
        bodystyle:
            bodystyle ?? const TextStyle(fontSize: 20, color: Colors.white),
        readmorestyle:
            readmorestyle ?? const TextStyle(fontSize: 20, color: Colors.white),
        title: title,
        titlestyle:
            titlestyle ?? const TextStyle(fontSize: 20, color: Colors.white),
      );
    }

    if (header) {
      return Header(
        title: title,
      );
    }

    return const AutoSizeText('use named construtor please');
  }
}
