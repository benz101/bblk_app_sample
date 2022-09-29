import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrimaryTextInputWithPassword extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintStyle;

  const PrimaryTextInputWithPassword(
      {Key? key, required this.controller, this.hintText, this.hintStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          Flexible(
            child: TextField(
              controller: controller,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: hintText ?? '',
                hintStyle: hintStyle,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: Colors.white, style: BorderStyle.solid, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: Colors.white, style: BorderStyle.solid, width: 1)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                        color: Colors.white, style: BorderStyle.solid, width: 1)),
              ),
            ),
          ),
           SvgPicture.asset('assets/images/ic_visibility.svg'),
           const SizedBox(width: 15,)
        ],
      ),
    );
  }
}
