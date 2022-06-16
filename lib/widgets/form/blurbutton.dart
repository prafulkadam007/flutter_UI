import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_lib/widgets/form/button.dart';

class BlurButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const BlurButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Button(
      onPressed: () => onPressed,
      title: title,
        bgColor: const Color.fromARGB(255, 225, 225, 225).withOpacity(0.4),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        titlestyle: TextStyle(fontSize: width * 0.045, color: Colors.white),
    );
  }
}
