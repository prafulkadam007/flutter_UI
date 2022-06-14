import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;
  final Function? onPressNotification;
  final Function? onPressProfile;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool automaticallyImplyLeading;
  final bool centerTitle;
  final double toolbarHeight;
  final double toolbarOpacity;
  final Color shadowColor;
  final double elevation;
  final double leadingWidth;
  final List<Widget>? trailingActions;
  final Widget? leadingActions;

  CustomAppBar({
    Key? key,
    this.title = '',
    this.onPressNotification,
    this.onPressProfile,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.white,
    this.automaticallyImplyLeading = false,
    this.toolbarHeight = 56,
    this.centerTitle = false,
    this.toolbarOpacity = 0.5,
    this.shadowColor = Colors.white,
    this.elevation = 15,
    this.leadingWidth = 0,
    this.trailingActions,
    this.leadingActions,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingActions,
      leadingWidth: leadingWidth,
      title: AutoSizeText(title),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      automaticallyImplyLeading: automaticallyImplyLeading,
      toolbarHeight: toolbarHeight,
      toolbarOpacity: toolbarOpacity,
      shadowColor: shadowColor,
      elevation: elevation,
      centerTitle: centerTitle,
      actions: trailingActions,
    );
  }
}
