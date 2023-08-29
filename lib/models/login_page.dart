import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            const SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(170.0, 45.0),
              ),
              child: const Text(
                "SIGN IN",
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            const SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(170.0, 45.0),
              ),
              child: const Text(
                "SIGN UP",
                style: TextStyle(fontSize: 17.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
