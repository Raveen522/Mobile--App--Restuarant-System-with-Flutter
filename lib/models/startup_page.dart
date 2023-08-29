import 'package:e_commerce_app/models/sign_in_page.dart';
import 'package:e_commerce_app/models/sign_up_page.dart';
import 'package:flutter/material.dart';


class StartUpPage extends StatelessWidget {
  const StartUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
            const SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SignUpPage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200.0, 45.0),
              ),
              child: const Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const SignInPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 140, 0),
                minimumSize: const Size(200.0, 45.0),
              ),
              child: const Text(
                "SIGN IN",
                style: TextStyle(fontSize: 17.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
