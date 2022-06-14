import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'helpers/decorators.dart';

class Dropdown1 extends StatelessWidget {
  Map<String, dynamic>? initvalue;
  String? hinttext;
  List<Map<String, dynamic>> options;
  TextEditingController? selectvalue;
  Function onChanged;
  Dropdown1({
    Key? key,
    this.initvalue,
    this.hinttext,
    required this.options,
    this.selectvalue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (initvalue != null && selectvalue != null) {
      selectvalue!.text = initvalue!['value'];
    }
    return DropdownButtonFormField<Map<String, dynamic>>(
      isDense: true,
      isExpanded: true,
      value: initvalue,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      iconSize: 30,
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 17),
      decoration: getInputDecoration(),
      onChanged: (Map<String, dynamic>? newValue) {
        selectvalue!.text = newValue!['value'];
        onChanged(newValue);
      },
      validator: (value) => value == null ? 'field required' : null,
      items: options.map((option) {
        return DropdownMenuItem<Map<String, dynamic>>(
          value: option,
          enabled: !option['disabled'],
          child: AutoSizeText(option['label']),
        );
      }).toList(),
    );
  }
}
