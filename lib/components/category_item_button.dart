import 'package:flutter/material.dart';
import 'glass_morphism.dart';

class CategoryItemButton extends StatefulWidget {
  const CategoryItemButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryItemButton> createState() => _CategoryItemButtonState();
}

class _CategoryItemButtonState extends State<CategoryItemButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: GlassContainer(
            height: 65.0,
            width: 65.0,
            padding: const EdgeInsets.all(10.0),
            border_radius: 20.0,
            border_width: 2.0,
            border_color: const Color.fromARGB(135, 255, 255, 255),
            blur_value: 5.0,
            background_begin_color: const Color.fromARGB(48, 255, 255, 255),
            background_end_color: const Color.fromARGB(32, 255, 255, 255),
            child: Image.asset(
              "assets/icons/cetogaries/burger.png",
              height: 50.0,
              width: 50.0,
            ),
          ),
        ),
        const Text(
          "Burger",
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
