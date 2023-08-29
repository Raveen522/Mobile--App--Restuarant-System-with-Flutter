import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  String _selectedCard = "Visa";
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
                    padding: const EdgeInsets.only(top: 1.5),
                    border_radius: 50.0,
                    border_width: 2.0,
                    border_color: Colors.white,
                    blur_value: 10.0,
                    background_begin_color: const Color.fromARGB(62, 255, 255, 255),
                    background_end_color: const Color.fromARGB(41, 255, 255, 255),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ),
                  const Text(
                    "Pay",
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
              height: 530.0,
              width: 370.0,
              padding: const EdgeInsets.all(20.0),
              border_radius: 20.0,
              border_width: 2.0,
              border_color: Colors.white,
              blur_value: 5.0,
              background_begin_color: const Color.fromARGB(62, 255, 255, 255),
              background_end_color: const Color.fromARGB(41, 255, 255, 255),
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       "Payment amount",
                  //       style: TextStyle(fontSize: 22.0, color: Colors.white),
                  //     ),
                  //     Text(
                  //       "Rs.6000.00",
                  //       style: TextStyle(fontSize: 22.0, color: Colors.white),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    width: 350.0,
                    height: 150.0,
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio(
                          value: 'Visa',
                          groupValue: _selectedCard,
                          onChanged: (value) {
                            setState(() {
                              _selectedCard = "$value";
                            });
                          },
                        ),
                        SizedBox(
                            height: 50.0,
                            child: Image.asset(
                                "assets/icons/1200px-Visa.svg.png")),
                        const SizedBox(
                          width: 30.0,
                        ),
                        Radio(
                          value: 'Master',
                          groupValue: _selectedCard,
                          onChanged: (value) {
                            setState(() {
                              _selectedCard = "$value";
                            });
                          },
                        ),
                        SizedBox(
                            height: 50.0,
                            child: Image.asset(
                                "assets/icons/2560px-MasterCard_Logo.svg.png")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 250.0,
                    //color: Colors.amber,
                    child: Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                          label: Text("Name on card"),
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        )),
                        TextField(
                            decoration: InputDecoration(
                          label: Text("Card number"),
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                  decoration: InputDecoration(
                                label: Text("CVV"),
                                labelStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              )),
                            ),
                            SizedBox(
                              width: 80.0,
                              child: TextField(
                                  decoration: InputDecoration(
                                label: Text("Expire date"),
                                labelStyle: TextStyle(color: Colors.white),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 30.0,
                  // ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130.0, 43.0),
                      ),
                      child: const Text(
                        "Proceed",
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
