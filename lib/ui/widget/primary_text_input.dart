import 'package:flutter/material.dart';

class PrimaryTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final double? borderRadius;

  const PrimaryTextInput(
      {Key? key, required this.controller, this.hintText, this.hintStyle, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText ?? '',
        hintStyle: hintStyle,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??8),
            borderSide: const BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??8),
            borderSide: const BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 1)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius??8),
            borderSide: const BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 1)),
      ),
    );
  }
}
