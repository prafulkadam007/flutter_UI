import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/custom/app_calendar.dart';
import 'package:flutter_ui_lib/widgets/textdisplayers/text_with_label.dart';
import 'package:flutter_ui_lib/widgets/icons/rounded_icon.dart';
import 'package:flutter_ui_lib/widgets/icons/rounded_image.dart';

import '../../resources/values_manager.dart';

class GatePassTicket extends StatelessWidget {
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

  const GatePassTicket({
    Key? key,
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
    this.passStyle
  }) : super(key: key);

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
                  // mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: (height * 0.05) / expand),
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
                    // Text(
                    //   name,
                    //   style: namestyle ??
                    //       TextStyle(
                    //           fontSize: (width * 0.045) / expand,
                    //           color: Colors.black),
                    // ),
                    // SizedBox(height: (height * 0.01) / expand),
                    // Text(
                    //   "Visitor Pass",
                    //   style: TextStyle(
                    //     fontSize: (width * 0.07) / expand,
                    //     fontStyle: FontStyle.normal,
                    //   ).copyWith(
                    //     color: Colors.black,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
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
                        TextWithLabel(
                          title: title,
                          titlestyle: titlestyle,
                          desc: subtext,
                          descStyle: subtextstyle,
                        )
                        // Column(
                        //   mainAxisAlignment: MainAxisAlignment.start,
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [

                        //     Text(company,
                        //         style: companystyle ??
                        //             TextStyle(
                        //                     fontSize: (width * 0.05) / expand,
                        //                     fontWeight: FontWeight.w300)
                        //                 .copyWith(
                        //                     fontWeight: FontWeightManager.bold,
                        //                     color: Colors.black)
                        //         ),
                        //     SizedBox(height: (height * 0.01) / expand),
                        //     Text(subtext,
                        //         style: subtextstyle ??
                        //             TextStyle(
                        //                 fontSize: (width * 0.04) / expand,
                        //                 fontWeight: FontWeight.w300)
                        //         ),
                        //   ],
                        // )
                      ],
                    ),
                    // SizedBox(height: (height * 0.01) / expand),
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
