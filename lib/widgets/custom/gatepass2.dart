import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/custom/app_calendar.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/text_with_label.dart';
import 'package:flutter_ui_lib/widgets/icons/rounded_icon.dart';
import 'package:flutter_ui_lib/widgets/icons/rounded_image.dart';

import '../../resources/values_manager.dart';

class GatePassTicket2 extends StatelessWidget {
  final String imageurl;
  final String name;
  final TextStyle? namestyle;
  final String title;
  final TextStyle? titlestyle;
  final String subtext;
  final TextStyle? subtextstyle;
  final DateTime date;
  final String? weekday;
  final TextStyle? weekdaystyle;
  final TextStyle? daystyle;
  final double expand;
  final double? height;
  final String passName;
  final TextStyle? passStyle;
  final TextStyle? monthstyle;

  const GatePassTicket2(
      {Key? key,
      required this.imageurl,
      required this.name,
      this.namestyle,
      required this.title,
      this.titlestyle,
      this.expand = 1,
      this.subtext = 'Ajman, United Arab Emirates',
      this.subtextstyle,
      required this.date,
      this.weekday,
      this.weekdaystyle,
      this.daystyle,
      this.monthstyle,
      this.height,
      this.passName = "Visitor Pass",
      this.passStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: AppPadding.p10),
          child: Container(
            height: height * 0.60,
            margin: EdgeInsets.all((width * 0.015) / expand),
            child: Card(
              margin: EdgeInsets.all((width * 0.05) / expand),
              color: Colors.white,
              elevation: AppSize.s5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s15),
              ),
              child: Padding(
                padding: EdgeInsets.all((width * 0.06) / expand),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: (height * 0.04) / expand),
                    RoundedImage(
                        size: (width * 0.25) / expand,
                        image: DecorationImage(
                          image: NetworkImage(imageurl),
                          fit: BoxFit.cover,
                        )),
                    SizedBox(height: (height * 0.02) / expand),
                    TextWithLabel(
                      title: name,
                      titlestyle: namestyle,
                      desc: passName,
                      descStyle: passStyle,
                      align: TextAlign.center,
                    ),
                    SizedBox(height: (height * 0.04) / expand),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 0.5,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(AppPadding.p5),
                          child: AppCalendar(
                            showBorder: true,
                            date: date,
                            weekday: weekday,
                            weekdaystyle: weekdaystyle,
                            daystyle: daystyle,
                            monthstyle: monthstyle,
                          ),
                        ),
                        SizedBox(
                          width: (width * 0.03) / expand,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWithLabel(
                                label: 'Company',
                                labelStyle: const TextStyle(fontSize: 10),
                                title: title,
                                titlestyle: titlestyle,
                                desc: subtext,
                                descStyle: subtextstyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: TextWithLabel(
                                      label: 'Department',
                                      labelStyle: const TextStyle(
                                          fontSize: 10, height: 2),
                                      title: 'HR',
                                      titlestyle: titlestyle,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextWithLabel(
                                      label: 'Approver',
                                      labelStyle: const TextStyle(
                                          fontSize: 10, height: 2),
                                      title: 'Zaheer',
                                      titlestyle: titlestyle,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        RoundedIcon(
          icon: Icon(
            Icons.check_circle,
            color: Colors.green,
            size: (width * 0.18) / expand,
          ),
          size: (width * 0.2) / expand,
        ),
      ],
    );
  }
}
