import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/font_manager.dart';
import 'package:flutter_ui_lib/widgets/custom/app_calendar.dart';
import 'package:flutter_ui_lib/widgets/icons/rounded_icon.dart';
import 'package:flutter_ui_lib/widgets/icons/rounded_image.dart';

import '../../resources/values_manager.dart';

class GatePassTicket extends StatelessWidget {
  final String imageurl;
  final String name;
  final TextStyle? namestyle;
  final String company;
  final TextStyle? companystyle;
  final String subtext;
  final TextStyle? subtextstyle;
  final DateTime date;
  final String? weekday;
  final TextStyle? weekdaystyle;
  final TextStyle? daystyle;
  final double expand;
  final double? height;

  final TextStyle? monthstyle;

  const GatePassTicket({
    Key? key,
    required this.imageurl,
    required this.name,
    this.namestyle,
    required this.company,
    this.companystyle,
    this.expand = 1,
    this.subtext = 'Ajman, United Arab Emirates',
    this.subtextstyle,
    required this.date,
    this.weekday,
    this.weekdaystyle,
    this.daystyle,
    this.monthstyle,
    this.height,
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
            //height: height * 0.65,
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: (height * 0.03) / expand),
                    RoundedImage(
                        size: (width * 0.25) / expand,
                        image: DecorationImage(
                          image: NetworkImage(imageurl),
                          fit: BoxFit.cover,
                        )),
                    SizedBox(height: (height * 0.02) / expand),
                    Text(
                      name,
                      style: namestyle ??
                          TextStyle(
                              fontSize: (width * 0.045) / expand,
                              color: Colors.black),
                      // TextStyle(
                      //   color: Colors.black,
                      //   fontWeight: FontWeight.w400,
                      //   fontSize: FontSize.s20,
                      // ),
                    ),
                    SizedBox(height: (height * 0.01) / expand),
                    Text(
                      "Visitor Pass",
                      style: TextStyle(
                        fontSize: (width * 0.07) / expand,
                        fontStyle: FontStyle.normal,
                      ).copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      // TextStyle(
                      //   color: Colors.black,
                      //   fontWeight: FontWeight.w600,
                      //   fontSize: FontSize.s29,
                      // ),
                    ),
                    SizedBox(height: (height * 0.05) / expand),
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
                          width: (width * 0.05) / expand,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(company,
                                style: companystyle ??
                                    TextStyle(
                                            fontSize: (width * 0.05) / expand,
                                            fontWeight: FontWeight.w300)
                                        .copyWith(
                                            fontWeight: FontWeightManager.bold,
                                            color: Colors.black)
                                // TextStyle(
                                //   color: Colors.black,
                                //   fontWeight: FontWeight.w600,
                                //   fontSize: FontSize.s18,
                                // ),
                                ),
                            SizedBox(height: (height * 0.01) / expand),
                            Text(subtext,
                                style: subtextstyle ??
                                    TextStyle(
                                        fontSize: (width * 0.04) / expand,
                                        fontWeight: FontWeight.w300)
                                // TextStyle(
                                //   color: Colors.black,
                                //   fontWeight: FontWeight.w400,
                                //   fontSize: FontSize.s16,
                                // ),
                                ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: (height * 0.01) / expand),
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
