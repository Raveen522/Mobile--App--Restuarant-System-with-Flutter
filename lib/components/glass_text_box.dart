import 'package:flutter/material.dart';

import 'glass_morphism.dart';

class GlassTextBox extends StatelessWidget {
  final height;
  final width;
  final margin;
  final border_radius;
  final suffixIcon;
  final prefixicon;
  final hinttext;
  bool obscureText;

  GlassTextBox({super.key, 
    this.height,
    this.width,
    this.margin,
    this.suffixIcon,
    this.prefixicon,
    this.hinttext,
    required this.border_radius,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      margin: margin,
      padding: const EdgeInsets.only(bottom: 10.0, left: 15.0, right: 15.0, top: 5.0),
      height: height,
      width: width,
      border_radius: border_radius,
      border_width: 1.5,
      border_color: Colors.white,
      blur_value: 5.0,
      background_begin_color: const Color.fromARGB(22, 255, 255, 255),
      background_end_color: const Color.fromARGB(8, 255, 255, 255),
      child: TextField(
        maxLines: 1,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white, fontSize: 18.0),
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: prefixicon,
            hintText: hinttext,
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(178, 255, 255, 255), width: 1.5))),
      ),
    );
  }
}
