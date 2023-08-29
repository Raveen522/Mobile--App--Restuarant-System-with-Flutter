import 'package:flutter/material.dart';

import 'glass_morphism.dart';

class CustomAlertDialog extends StatelessWidget {
  final hieght;
  final width;
  final child;
  const CustomAlertDialog({Key? key, this.child, this.hieght, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.transparent,
        content: GlassContainer(
          height: hieght,
          width: width,
          padding: const EdgeInsets.all(10.0),
          border_radius: 15.0,
          border_width: 1.0,
          border_color: Colors.white,
          blur_value: 10.0,
          background_begin_color: const Color.fromARGB(81, 255, 255, 255),
          background_end_color: const Color.fromARGB(41, 255, 255, 255),
          child: child,
        ));
  }
}
