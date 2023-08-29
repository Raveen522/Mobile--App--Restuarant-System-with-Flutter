import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';

import 'package:lottie/lottie.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationcontroller;
  double opacityLevel = 0;

  @override
  void initState() {
    _animationcontroller = AnimationController(vsync: this);
    super.initState();
  }


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
                    "Payment Success",
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
              height: 350.0,
              width: 300.0,
              // padding: EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(top: 70.0),
              border_radius: 20.0,
              border_width: 2.0,
              border_color: Colors.white,
              blur_value: 5.0,
              background_begin_color: const Color.fromARGB(62, 255, 255, 255),
              background_end_color: const Color.fromARGB(41, 255, 255, 255),
              child: Center(
                child: SizedBox(
                  height: 250.0,
                  child: Stack(
                    children: [
                      Lottie.asset(
                        "assets/animations/JSON/success_lottie.json",
                        height: 200.0,
                        width: double.infinity,
                        repeat: false,
                        controller: _animationcontroller,
                        onLoaded: (composition) {
                          _animationcontroller.addStatusListener((status) {
                            if (status == AnimationStatus.completed) {
                              setState(() => opacityLevel = 1);
                            }
                          });
                          _animationcontroller
                            ..duration = composition.duration
                            ..forward();
                        },
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 85.0, top: 180.0),
                        child: AnimatedOpacity(
                          opacity: opacityLevel,
                          duration: const Duration(milliseconds: 800),
                          child: Text(
                            'Success!',
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.amberAccent[400],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
