import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxShadowHelper {
  static List<BoxShadow> getBoxShadow() {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        offset: const Offset(
          5.0,
          5.0,
        ),
        blurRadius: 10.0,
        spreadRadius: 2.0,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.white,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
  }

  static List<BoxShadow> getBoxShadowAlt() {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        offset: const Offset(
          5.0,
          5.0,
        ),
        blurRadius: 10.0,
        spreadRadius: 2.0,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.white,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
  }

   static List<BoxShadow> getBoxShadowAltSecond() {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        offset: const Offset(
          5.0,
          5.0,
        ),
        blurRadius: 10.0,
        spreadRadius: 2.0,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.white,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ];
  }
}
