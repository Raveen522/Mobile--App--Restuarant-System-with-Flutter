import 'package:flutter/material.dart';

import '../components/cart_item.dart';
import '../components/glass_morphism.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List items = ["0", "1", "2", "3", "4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/backgrounds/pexels-valeria-boltneva-1833349.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 90.0,
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GlassContainer(
                    height: 50.0,
                    width: 50.0,
                    padding: const EdgeInsets.only(left: 3.0, top: 1.5),
                    border_radius: 50.0,
                    border_width: 2.0,
                    border_color: Colors.white,
                    blur_value: 10.0,
                    background_begin_color: const Color.fromARGB(62, 255, 255, 255),
                    background_end_color: const Color.fromARGB(41, 255, 255, 255),
                    child: IconButton(
                      icon: const Icon(Icons.menu_open_rounded),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    "My Orders",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  GlassContainer(
                    height: 50.0,
                    width: 50.0,
                    padding: const EdgeInsets.only(left: 0.8, top: 1.0),
                    border_radius: 50.0,
                    border_width: 2.0,
                    border_color: Colors.white,
                    blur_value: 10.0,
                    background_begin_color: const Color.fromARGB(62, 255, 255, 255),
                    background_end_color: const Color.fromARGB(41, 255, 255, 255),
                    child: IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            GlassContainer(
              height: 570.0,
              width: 370.0,
              padding: const EdgeInsets.all(5.0),
              border_radius: 20.0,
              border_width: 2.0,
              border_color: Colors.white,
              blur_value: 5.0,
              background_begin_color: const Color.fromARGB(62, 255, 255, 255),
              background_end_color: const Color.fromARGB(41, 255, 255, 255),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Item",
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                      Text(
                        "Qty",
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                      Text(
                        "Total",
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      )
                    ],
                  ),
                  const Divider(
                      color: Colors.white,
                      height: 20.0,
                      thickness: 1.5,
                      endIndent: 10.0,
                      indent: 10.0),
                  SizedBox(
                    height: 400,
                    width: 350,
                    //color: Colors.amberAccent,
                    child: ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = items[index];
                          return Container(
                            margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Dismissible(
                              key: Key(item),
                              onDismissed: (direction) {
                                setState(() {
                                  items.removeAt(index);
                                });

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('$item dismissed')));
                              },
                              background: Container(
                                  color: const Color.fromARGB(255, 255, 0, 0)),
                              child: const CartItem(),
                            ),
                          );
                        }),
                  ),
                  const Divider(
                      color: Colors.white,
                      height: 10,
                      thickness: 2.0,
                      endIndent: 10.0,
                      indent: 10.0),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sub Total",
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                        Text(
                          "Rs.6000.00",
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130.0, 43.0),
                      ),
                      child: const Text(
                        "Checkout",
                        style: TextStyle(fontSize: 18.0),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
