import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int itemqty = 1;
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: 100.0,
      width: 350.0,
      padding: const EdgeInsets.only(left: 3.0),
      //margin: EdgeInsets.only(bottom: 10.0),
      border_radius: 15.0,
      border_width: 2.0,
      border_color: Colors.white,
      blur_value: 5.0,
      background_begin_color: const Color.fromARGB(62, 255, 255, 255),
      background_end_color: const Color.fromARGB(41, 255, 255, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 90.0,
              width: 90.0,
              child: Image.asset("assets/images/items/Pizza.png")),
          const SizedBox(
            width: 90.0,
            child: Text(
              "Neapolitan Pizza",
              style: TextStyle(fontSize: 17.0, color: Colors.white),
              maxLines: 2,
            ),
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 1.0,
            width: 1.0,
            endIndent: 20.0,
            indent: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onTap: () {
                  setState(() {
                    itemqty++;
                  });
                },
              ),
              Text(
                "$itemqty",
                style: const TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              InkWell(
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onTap: () {
                  setState(() {
                    if (itemqty != 1) {
                      itemqty--;
                    }
                  });
                },
              )
            ],
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 1.0,
            width: 1.0,
            endIndent: 20.0,
            indent: 20.0,
          ),
          const Text(
            "Rs.1500",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
          const SizedBox(
            width: 5.0,
          ),
        ],
      ),
    );
  }
}
