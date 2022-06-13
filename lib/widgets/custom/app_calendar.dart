import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/resources/values_manager.dart';
import 'package:intl/intl.dart';

class AppCalendar extends StatefulWidget {
  final DateTime date;
  final String? weekday;
  final TextStyle? weekdaystyle;
  final TextStyle? daystyle;
  final Color? color;

  final TextStyle? monthstyle;
  final bool? showBorder;

  const AppCalendar({
    Key? key,
    required this.date,
    this.weekday,
    this.weekdaystyle,
    this.daystyle,
    this.monthstyle, this.color,
    this.showBorder = false,
  }) : super(key: key);

  @override
  State<AppCalendar> createState() => _AppCalendarState();
}

class _AppCalendarState extends State<AppCalendar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(6),
      decoration: widget.showBorder! ? ShapeDecoration(
        shape:  Border.all(width: 1, color: Colors.black26),
      ) : null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          AutoSizeText(
              DateFormat('EEEE')
                  .format(widget.date)
                  .toString()
                  .substring(0, 3)
                  .toUpperCase(),
              style: widget.weekdaystyle ??
                  TextStyle(fontSize: width * 0.025, color: widget.color ??  Colors.black54)
              //  TextStyle(
              //   color: Colors.black54,
              //   fontSize: FontSize.s14,
              // ),
              ),
          AutoSizeText(DateFormat('dd').format(widget.date).toString(),
              style: widget.daystyle ??
                  TextStyle(fontSize: width * 0.05, color: widget.color ??  Colors.black)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppPadding.p3),
            child: Container(height: 1.0, width: 30.0, color: widget.color ??  Colors.black54),
          ),
          AutoSizeText(
              DateFormat('MMMM')
                  .format(widget.date)
                  .toString()
                  .toUpperCase()
                  .substring(0, 3),
              style: widget.monthstyle ??
                  TextStyle(fontSize: width * 0.025, color: widget.color ??  Colors.black)),
        ],
      ),
    );
  }
}
