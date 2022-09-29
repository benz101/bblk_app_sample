import 'package:bblk_app/helper/color_helper.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final TextStyle? textStyle;
  final Widget? icon;
  final double? borderRadius;
  const PrimaryButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.textStyle,
      this.icon,
      this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // ignore: sort_child_properties_last
      child: icon != null
          ? Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.transparent,
                    child: Text(
                      text,
                      style: textStyle ?? const TextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  )),
                  icon!
                ],
              ),
            )
          : Text(text, style: textStyle ?? const TextStyle()),
      style: ElevatedButton.styleFrom(
          primary: ColorHelper.colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
          )),
    );
  }
}
