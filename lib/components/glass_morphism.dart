import 'dart:ui';

import 'package:flutter/material.dart';

//import 'CustomShadow.dart';

class GlassContainer extends StatelessWidget {
  final height;
  final width;

  final padding;
  final margin;

  final child;

  final border_radius;
  final border_width;
  final border_color;

  final blur_value;

  final background_begin_color;
  final background_end_color;

  const GlassContainer({super.key, 
    this.height,
    this.width,
    this.padding,
    this.margin,
    this.child,
    required this.border_radius,
    required this.border_width,
    required this.border_color,
    required this.blur_value,
    required this.background_begin_color,
    required this.background_end_color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(border_radius),
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            children: [
              //blur effect
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: blur_value,
                  sigmaY: blur_value,
                ),
                child: Container(),
              ),

              //gradient effect
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: border_color,
                    width: border_width,
                  ),
                  borderRadius: BorderRadius.circular(border_radius),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        background_begin_color,
                        background_end_color,
                      ]),
                ),
              ),

              //child
              Container(
                padding: padding,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
