import 'package:flutter/material.dart';

class SpecialDelasList extends StatefulWidget {
  const SpecialDelasList({
    Key? key,
  }) : super(key: key);

  @override
  State<SpecialDelasList> createState() => _SpecialDelasListState();
}

class _SpecialDelasListState extends State<SpecialDelasList> {
  List dealimageslist = [
    "assets/images/backgrounds/pexels-pixabay-326281.jpg",
    "assets/images/backgrounds/pexels-son-tung-tran-6718709.jpg",
    "assets/images/backgrounds/pexels-rachel-claire-5490922.jpg",
    "assets/images/backgrounds/pexels-lukas-1352274.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: dealimageslist.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 125,
            width: 200,
            margin: const EdgeInsets.only(left: 15.0, right: 5.0, bottom: 6.0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(204, 255, 255, 255),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(dealimageslist[index]),
                    fit: BoxFit.cover),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 8.0,
                      color: Color.fromARGB(134, 27, 27, 27),
                      offset: Offset(1, 2),
                      spreadRadius: 1.5)
                ]),
          );
        });
  }
}
