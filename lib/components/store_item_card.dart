
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String ItemImgPath;
  bool isFavorite;
  ItemCard(
      {Key? key,
      required this.ItemName,
      required this.ItemPrice,
      required this.ItemImgPath,
      required this.isFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isItemAdded = false;
    return StatefulBuilder(
      builder: (context, StateSetter setState) => Container(
        padding: const EdgeInsets.all(5),
        height: 170,
        width: 170,
        child: Stack(
          children: [
            // Container(
            //   margin: EdgeInsets.only(top: 55),
            //   height: 130,
            //   width: 200,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(30),
            //     boxShadow: [
            //       BoxShadow(
            //         //shadow
            //         color: Color.fromARGB(122, 0, 0, 0),
            //         spreadRadius: 0.4,
            //         blurRadius: 15,
            //         offset: Offset(3, 5), // changes position of shadow
            //       ),
            //     ],
            //   ),
            // ),
            CustomPaint(
              size: Size(
                  170,
                  (170 * 1)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: ItemCardPainter(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //card head
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(ItemImgPath),
                    ),

                    //favorite button
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                //shadow
                                color: isFavorite == true
                                    ? const Color.fromRGBO(255, 2, 87, 1)
                                    : Colors.white,
                                spreadRadius: 0.1,
                                blurRadius: 8,
                                offset:
                                    const Offset(0, 0), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  isFavorite == true
                                      ? const Color.fromARGB(255, 255, 44, 29)
                                      : Colors.white,
                                  isFavorite == true
                                      ? const Color.fromARGB(255, 255, 48, 117)
                                      : Colors.white
                                ])),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (isFavorite == true) {
                                isFavorite = false;
                              } else {
                                isFavorite = true;
                              }
                            });
                          },
                          padding: const EdgeInsets.only(right: 0.2),
                          icon: Icon(
                              isFavorite == true
                                  ? Icons.favorite
                                  : Icons.favorite_outline,
                              size: 30,
                              color: isFavorite == true
                                  ? Colors.white
                                  : const Color.fromARGB(255, 255, 0, 85)),
                        ),
                      ),
                    ),
                    //favorite button
                  ],
                ),
                //card head

                //item name
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    ItemName,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 8.0,
                          color: Color.fromARGB(186, 61, 59, 59),
                        ),
                      ],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //item name

                //item price text
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Text(
                    'Rs.$ItemPrice',
                    style: const TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 8.0,
                            color: Color.fromARGB(186, 61, 59, 59),
                          ),
                        ],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: 45.0,
              width: isItemAdded == false ? 45.0 : 100.0,
              margin: EdgeInsets.only(
                  top: 120.0, left: isItemAdded == false ? 115.0 : 70),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(color: Colors.white, width: 1.5)),
              child: Row(
                  children: isItemAdded == false
                      ? [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (isItemAdded == false) {
                                    isItemAdded = true;
                                  }
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                child: const Icon(
                                  Icons.add,
                                  size: 30.0,
                                ),
                              )),
                        ]
                      : [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (isItemAdded == true) {
                                    isItemAdded = false;
                                  }
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                child: const Icon(
                                  Icons.delete_outline,
                                  size: 30.0,
                                ),
                              )),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                child: const Icon(
                                  Icons.add,
                                  size: 30.0,
                                ),
                              )),
                        ]),
              // child: Row(
              //   children: isItemAdded == false
              //       ? [
              //           IconButton(
              //               onPressed: () {
              //                 setState(() {
              //                   if (isItemAdded == false) {
              //                     isItemAdded = true;
              //                   }
              //                 });
              //               },
              //               icon: Icon(Icons.add_rounded),
              //               iconSize: 25.0)
              //         ]
              //       : [
              //           IconButton(
              //               onPressed: () {
              //                 setState(() {
              //                   if (isItemAdded == true) {
              //                     isItemAdded = false;
              //                   }
              //                 });
              //               },
              //               icon: Icon(Icons.delete_outline),
              //               iconSize: 25.0),
              //           IconButton(
              //               onPressed: () {
              //                 setState(() {
              //                   if (isItemAdded == false) {
              //                     isItemAdded = true;
              //                   }
              //                 });
              //               },
              //               icon: Icon(Icons.add_rounded),
              //               iconSize: 25.0)
              //         ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCardPainter extends CustomPainter {
  get crashMe => null;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = Paint()
      ..color = const Color.fromARGB(66, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    final borderPaint = Paint()
      ..color = const Color.fromARGB(183, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0185333, size.height * 0.8425333);
    path_0.quadraticBezierTo(size.width * 0.0165333, size.height * 0.9316000,
        size.width * 0.1012000, size.height * 0.9342667);
    path_0.cubicTo(
        size.width * 0.3237000,
        size.height * 0.9342667,
        size.width * 0.6599000,
        size.height * 0.9406667,
        size.width * 0.8824000,
        size.height * 0.9406667);
    path_0.quadraticBezierTo(size.width * 0.9887667, size.height * 0.9431000,
        size.width * 0.9814667, size.height * 0.8266667);
    path_0.lineTo(size.width * 0.9824000, size.height * 0.2364000);
    path_0.quadraticBezierTo(size.width * 0.9664667, size.height * 0.1022333,
        size.width * 0.7890667, size.height * 0.1464000);
    path_0.cubicTo(
        size.width * 0.5483667,
        size.height * 0.2135000,
        size.width * 0.3357667,
        size.height * 0.2773000,
        size.width * 0.1100000,
        size.height * 0.3401333);
    path_0.cubicTo(
        size.width * 0.0202333,
        size.height * 0.3823000,
        size.width * 0.0241667,
        size.height * 0.4495667,
        size.width * 0.0240000,
        size.height * 0.4917333);
    path_0.quadraticBezierTo(size.width * 0.0231667, size.height * 0.6109000,
        size.width * 0.0185333, size.height * 0.8425333);
    path_0.close();

    //canvas.drawShadow(path_0, Colors.grey.withAlpha(60), 5.0, false);
    canvas.drawPath(path_0, paint_0);
    canvas.drawPath(path_0, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
