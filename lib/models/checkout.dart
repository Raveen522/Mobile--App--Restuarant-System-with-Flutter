import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String _selectedPaymentOption = "Card";
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
                    "Checkout",
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
              padding: const EdgeInsets.all(10.0),
              border_radius: 20.0,
              border_width: 2.0,
              border_color: Colors.white,
              blur_value: 5.0,
              background_begin_color: const Color.fromARGB(62, 255, 255, 255),
              background_end_color: const Color.fromARGB(41, 255, 255, 255),
              child: Column(
                children: [
                  const Text(
                    "Delivery Location",
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  Container(
                    height: 220.0,
                    width: 350.0,
                    padding: const EdgeInsets.all(10.0),
                    //color: Colors.amber,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 120.0,
                          width: 370.0,
                          child: GlassContainer(
                            padding: EdgeInsets.all(10.0),
                            border_radius: 15.0,
                            border_width: 2.0,
                            border_color: Colors.white,
                            blur_value: 5.0,
                            background_begin_color:
                                Color.fromARGB(62, 255, 255, 255),
                            background_end_color:
                                Color.fromARGB(41, 255, 255, 255),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 170.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.call_end_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "+94 70 1 234 56 7",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 270.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 200.0,
                                        child: Text(
                                          "No: 123/A, Street 01, Lane 01, City Name",
                                          style: TextStyle(color: Colors.white),
                                          maxLines: 3,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 45.0,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GlassContainer(
                          height: 50.0,
                          padding: EdgeInsets.all(15.0),
                          border_radius: 20.0,
                          border_width: 2.0,
                          border_color: Colors.white,
                          blur_value: 5.0,
                          background_begin_color:
                              Color.fromARGB(62, 255, 255, 255),
                          background_end_color:
                              Color.fromARGB(41, 255, 255, 255),
                          child: SizedBox(
                            width: 180.0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.add_location_alt_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Add another address",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                      color: Colors.white,
                      height: 25.0,
                      thickness: 2.0,
                      endIndent: 10.0,
                      indent: 10.0),
                  const Text(
                    "Payment Method",
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GlassContainer(
                    height: 100.0,
                    width: 370.0,
                    padding: const EdgeInsets.all(10.0),
                    border_radius: 20.0,
                    border_width: 2.0,
                    border_color: Colors.white,
                    blur_value: 5.0,
                    background_begin_color: const Color.fromARGB(62, 255, 255, 255),
                    background_end_color: const Color.fromARGB(41, 255, 255, 255),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          visualDensity:
                              const VisualDensity(horizontal: 0, vertical: -4.0),
                          leading: Radio(
                            value: 'Card',
                            groupValue: _selectedPaymentOption,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentOption = "$value";
                              });
                            },
                          ),
                          title: const Text(
                            'Credit/Debit Card',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                        ListTile(
                          visualDensity:
                              const VisualDensity(horizontal: 0, vertical: -4.0),
                          leading: Radio(
                            value: 'Cash',
                            groupValue: _selectedPaymentOption,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentOption = "$value";
                              });
                            },
                          ),
                          title: const Text(
                            'Cash on delivery',
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
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
