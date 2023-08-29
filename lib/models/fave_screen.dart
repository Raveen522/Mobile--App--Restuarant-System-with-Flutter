import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';
import '../components/glass_text_box.dart';
import '../components/store_item_card.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  GlassTextBox(
                    border_radius: 25.0,
                    obscureText: false,
                    suffixIcon: IconButton(
                      color: Colors.white,
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                    height: 50.0,
                    width: 250.0,
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
            Container(
              padding: const EdgeInsets.only(left: 10.0),
              height: 650.0,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemCard(
                      isFavorite: true,
                      ItemImgPath: "assets/images/items/Pizza.png",
                      ItemName: "Pizza",
                      ItemPrice: '200',
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
