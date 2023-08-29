import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';
import '../components/glass_text_box.dart';

import 'package:lottie/lottie.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationcontroller;
  late final PageController _pageController = PageController();
  bool isSignUpCompleted = false;
  double opacityLevel = 0;
  int pageNumber = 0;
  bool isPW_Obscure_Text = true;
  bool isRe_PW_Obscure_Text = true;

  bool isBackButtonVisible = false;
  bool isSocialLoginVisible = true;
  bool isNextButtonVisible = true;
  double titleAlignWidht = 120.0;
  double glassBoxHieght = 440.0;

  @override
  void initState() {
    _animationcontroller = AnimationController(vsync: this);
    super.initState();
  }

  void _changeOpacity() {
    setState(() => opacityLevel = 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/backgrounds/pexels-alleksana-4224305.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 2.0),
                      color: const Color.fromARGB(74, 255, 255, 255)),
                  child: Ink(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_outlined),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Image(
              height: 100.0,
              width: 100.0,
              image: AssetImage("assets/icons/logo.png"),
            ),
            const Text(
              "Food App",
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 15.0),
            GlassContainer(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              height: glassBoxHieght,
              width: 320.0,
              border_radius: 20.0,
              border_width: 1.5,
              border_color: const Color.fromARGB(92, 255, 255, 255),
              blur_value: 10.5,
              background_begin_color: const Color.fromARGB(34, 255, 255, 255),
              background_end_color: const Color.fromARGB(16, 255, 255, 255),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Visibility(
                          visible: isBackButtonVisible,
                          child: Ink(
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back_ios_outlined),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              onPressed: () {
                                if (pageNumber != 0) {
                                  pageNumber--;
                                  if (_pageController.hasClients) {
                                    _pageController.animateToPage(
                                      pageNumber,
                                      duration:
                                          const Duration(milliseconds: 350),
                                      curve: Curves.easeInOut,
                                    );
                                  }

                                  setState(() {
                                    isBackButtonVisible = true;
                                  });

                                  if (pageNumber == 0) {
                                    isBackButtonVisible = false;
                                    isSocialLoginVisible = true;
                                    glassBoxHieght = 440.0;
                                    titleAlignWidht = 120.0;
                                  }
                                }
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: titleAlignWidht,
                        ),
                        const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 25.0, color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Expanded(
                        child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      children: [
                        const NameDetails(),
                        const ContactDetails(),
                        Password(),
                        const Verification(),
                        SuccessAnimation(),
                      ],
                    )),
                    Visibility(
                      visible: isNextButtonVisible,
                      child: ElevatedButton(
                        onPressed: () {
                          if (pageNumber != 4) {
                            pageNumber++;
                            if (_pageController.hasClients) {
                              _pageController.animateToPage(
                                pageNumber,
                                duration: const Duration(milliseconds: 350),
                                curve: Curves.easeInOut,
                              );
                            }

                            setState(() {
                              isBackButtonVisible = true;
                              titleAlignWidht = 75.0;
                              isSocialLoginVisible = false;
                              glassBoxHieght = 380.0;
                            });

                            if (pageNumber == 4) {
                              isNextButtonVisible = false;
                              isBackButtonVisible = false;
                              glassBoxHieght = 320.0;
                              titleAlignWidht = 120.0;
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120.0, 40.0),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 17.0),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Visibility(
                      visible: isSocialLoginVisible,
                      child: Column(
                        children: [
                          const Text(
                            "Or Sign Up with",
                            style: TextStyle(color: Colors.amber),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                child: IconButton(
                                  iconSize: 48.0,
                                  icon: Image.asset(
                                      "assets/icons/facebook-96.png"),
                                  onPressed: () {},
                                ),
                              ),
                              InkWell(
                                child: IconButton(
                                  iconSize: 42.0,
                                  icon:
                                      Image.asset("assets/icons/google-96.png"),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Password() {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      //color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Password",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          GlassTextBox(
            margin: const EdgeInsets.only(top: 5.0),
            border_radius: 50.0,
            height: 45.0,
            width: 250.0,
            obscureText: isPW_Obscure_Text,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPW_Obscure_Text = !isPW_Obscure_Text;
                });
              },
              child: Icon(
                  isPW_Obscure_Text ? Icons.visibility_off : Icons.visibility),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Confirm Password",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          GlassTextBox(
            margin: const EdgeInsets.only(top: 5.0),
            border_radius: 50.0,
            height: 45.0,
            width: 250.0,
            obscureText: isRe_PW_Obscure_Text,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isRe_PW_Obscure_Text = !isRe_PW_Obscure_Text;
                });
              },
              child: Icon(isRe_PW_Obscure_Text
                  ? Icons.visibility_off
                  : Icons.visibility),
            ),
          ),
        ],
      ),
    );
  }

  Container SuccessAnimation() {
    return SizedBox(
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
                  _changeOpacity();
                }
              });
              _animationcontroller
                ..duration = composition.duration
                ..forward();
            },
          ),
          Container(
            margin: const EdgeInsets.only(left: 90.0, top: 180.0),
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
    );
  }
}

class Verification extends StatelessWidget {
  const Verification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      //color: Colors.amber,
      child: Column(
        children: [
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            "Verify",
            style: TextStyle(color: Colors.white, fontSize: 22.0),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
            width: 200.0,
            child: const Text(
              "Enter the verification OTP code in your messsges",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 6.0, right: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GlassTextBox(
                  border_radius: 15.0,
                  obscureText: false,
                  height: 50.0,
                  width: 45.0,
                ),
                GlassTextBox(
                  border_radius: 15.0,
                  obscureText: false,
                  height: 50.0,
                  width: 45.0,
                ),
                GlassTextBox(
                  border_radius: 15.0,
                  obscureText: false,
                  height: 50.0,
                  width: 45.0,
                ),
                GlassTextBox(
                  border_radius: 15.0,
                  obscureText: false,
                  height: 50.0,
                  width: 45.0,
                ),
                GlassTextBox(
                  border_radius: 15.0,
                  obscureText: false,
                  height: 50.0,
                  width: 45.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't received ?",
                style: TextStyle(color: Colors.amber, fontSize: 15.0),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend",
                    style: TextStyle(color: Colors.cyan, fontSize: 15.0),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  const ContactDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      //color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Email",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          GlassTextBox(
            margin: const EdgeInsets.only(top: 5.0),
            border_radius: 50.0,
            height: 45.0,
            width: 250.0,
            obscureText: false,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Phone number",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          GlassTextBox(
            margin: const EdgeInsets.only(top: 5.0),
            border_radius: 50.0,
            height: 45.0,
            width: 250.0,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}

class NameDetails extends StatelessWidget {
  const NameDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      //color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30.0,
          ),
          const Text(
            "First name",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          GlassTextBox(
            margin: const EdgeInsets.only(top: 5.0),
            border_radius: 50.0,
            height: 45.0,
            width: 250.0,
            obscureText: false,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Last name",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          GlassTextBox(
            margin: const EdgeInsets.only(top: 5.0),
            border_radius: 50.0,
            height: 45.0,
            width: 250.0,
            obscureText: false,
          ),
        ],
      ),
    );
  }
}
