import 'package:flutter/material.dart';

import 'package:flutter_ui_lib/widgets/loader/assertdisplay.dart';

class LottieLoader extends StatelessWidget {
  final String asset;
  final Color color;
  final AssetType type;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const LottieLoader({
    Key? key,
    required this.asset,
    this.color = Colors.blue,
    required this.type,
    this.width,
    this.height,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
        child: Center(
          child: AssetDisplay(
            src: asset,
            type: type,
          ),
        ),
      ),
    );
  }
}
