import 'package:flutter/material.dart';
import 'glass_morphism.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  List categorynamelist = [
    "Pizza",
    "Burger",
    "Rice",
    "Noodles",
    "Coffe",
    "Cake"
  ];
  List categoryimgpathlist = [
    "assets/icons/cetogaries/pizza.png",
    "assets/icons/cetogaries/burger.png",
    "assets/icons/cetogaries/fried-rice.png",
    "assets/icons/cetogaries/noodles.png",
    "assets/icons/cetogaries/coffee.png",
    "assets/icons/cetogaries/cupcake.png"
  ];
  int selected_category = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: categorynamelist.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected_category = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 5.0),
                child: Column(
                  children: [
                    GlassContainer(
                      height: 65.0,
                      width: 65.0,
                      padding: const EdgeInsets.all(10.0),
                      border_radius: 20.0,
                      border_width: selected_category == index ? 2.5 : 2.0,
                      border_color: selected_category == index
                          ? Colors.amber
                          : const Color.fromARGB(155, 255, 255, 255),
                      blur_value: 5.0,
                      background_begin_color: const Color.fromARGB(48, 255, 255, 255),
                      background_end_color: selected_category == index
                          ? const Color.fromARGB(127, 255, 255, 255)
                          : const Color.fromARGB(32, 255, 255, 255),
                      child: Image.asset(
                        categoryimgpathlist[index],
                        height: 50.0,
                        width: 50.0,
                      ),
                    ),
                    Text(
                      categorynamelist[index],
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
