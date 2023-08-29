import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';
import '../components/glass_text_box.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

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
              height: 450.0,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const Text(
                      "Username or email",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    GlassTextBox(
                      margin: const EdgeInsets.only(top: 5.0),
                      border_radius: 50.0,
                      height: 45.0,
                      width: 250.0,
                      obscureText: false,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    GlassTextBox(
                      margin: const EdgeInsets.only(top: 5.0),
                      border_radius: 50.0,
                      height: 45.0,
                      width: 250.0,
                      obscureText: true,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120.0, 40.0),
                      ),
                      child: const Text(
                        "Sign In",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Forgot Password ?",
                          style: TextStyle(color: Colors.amber),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Touch here..",
                              style: TextStyle(color: Colors.cyan),
                            ))
                      ],
                    ),
                    const Text(
                      "Or sign in with",
                      style: TextStyle(color: Colors.amber),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: IconButton(
                            iconSize: 48.0,
                            icon: Image.asset("assets/icons/facebook-96.png"),
                            onPressed: () {},
                          ),
                        ),
                        InkWell(
                          child: IconButton(
                            iconSize: 42.0,
                            icon: Image.asset("assets/icons/google-96.png"),
                            onPressed: () {},
                          ),
                        ),
                      ],
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
}
