import 'package:flutter/material.dart';

InputDecoration getInputDecoration({double? height, String? hintText}) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide:
          BorderSide(color: Color.fromRGBO(180, 205, 251, 1), width: 2.0),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide:
          BorderSide(color: Color.fromRGBO(180, 205, 251, 1), width: 2.0),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
    ),
    disabledBorder: const OutlineInputBorder(
      borderSide:
          BorderSide(color: Color.fromRGBO(180, 205, 251, 1), width: 2.0),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
    ),
    hintText: hintText ?? '',
    contentPadding: height != null
        ? EdgeInsets.fromLTRB(24, height, 10, height)
        : const EdgeInsets.fromLTRB(24, 0, 0, 0),
  );
}

/*const inputDecoration = InputDecoration(
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2.0),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 2.0),
  ),
  hintText: '',
);*/
