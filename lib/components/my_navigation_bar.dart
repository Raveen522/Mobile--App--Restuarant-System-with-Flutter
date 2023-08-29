import 'package:flutter/material.dart';

import 'glass_morphism.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  late int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 15.0),
      child: GlassContainer(
        height: 70.0,
        //width: 200.0,
        padding: const EdgeInsets.only(top: 7.5),
        border_radius: 50.0,
        border_width: 2.0,
        border_color: Colors.white,
        blur_value: 10.0,
        background_begin_color: const Color.fromARGB(62, 255, 255, 255),
        background_end_color: const Color.fromARGB(41, 255, 255, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationItem(Icons.favorite_outline, 0),
            NavigationItem(Icons.home_outlined, 1),
            NavigationItem(Icons.shopping_cart_outlined, 2)
          ],
        ),
      ),
    );
  }

  AnimatedContainer NavigationItem(IconData? icon, int index) {
    return AnimatedContainer(
      height: 55.0,
      width: 55.0,
      decoration: index == _selectedindex
          ? BoxDecoration(
              color: const Color.fromARGB(255, 255, 202, 0),
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: Colors.white,
                width: 1.5,
              ),
            )
          : const BoxDecoration(),
      duration: const Duration(milliseconds: 200),
      child: IconButton(
        onPressed: () {
          setState(() {
            _selectedindex = index;
          });
        },
        iconSize: 35.0,
        icon: Icon(icon),
        color: index == _selectedindex ? Colors.black : Colors.white,
      ),
    );
  }
}
