import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';
import 'package:e_commerce_app/components/glass_text_box.dart';
import '../components/category_list_view.dart';
import '../components/special_deals_list.dart';
import '../components/store_item_card.dart';
import 'notification_panel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List items = ["0", "1", "2", "3", "4"];
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
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => const NotificationScreen(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 22.0, color: Colors.white),
            ),
            const SizedBox(
              height: 110.0,
              width: double.infinity,
              child: CategoryListView(),
            ),
            // Divider(
            //     color: Color.fromARGB(55, 0, 0, 0), height: 0, thickness: 3.0),
            SizedBox(
                height: 520.0,
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate([
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text("Special Deals",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.white)),
                        const SizedBox(
                          height: 150.0,
                          width: double.infinity,
                          child: SpecialDelasList(),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text("Popular Tastes",
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 22.0, color: Colors.white)),
                      ]),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(left: 10.0),
                      sliver: SliverGrid(
                          delegate: SliverChildBuilderDelegate(childCount: 11,
                              (BuildContext context, int index) {
                            return ItemCard(
                              isFavorite: true,
                              ItemImgPath: "assets/images/items/Pizza.png",
                              ItemName: "Pizza",
                              ItemPrice: '200',
                            );
                          }),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200)),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        const SizedBox(
                          height: 80.0,
                        ),
                      ]),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
