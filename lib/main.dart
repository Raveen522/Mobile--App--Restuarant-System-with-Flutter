// import 'package:e_commerce_app/components/glass_morphism.dart';
import 'package:flutter/material.dart';

// import 'components/glass_text_box.dart';
// import 'models/foret_password_page.dart';
// import 'models/home_screen.dart';
// import 'models/login_page.dart';
import 'models/main_screen.dart';
// import 'models/sign_in_page.dart';
// import 'models/sign_up_page.dart';
// import 'models/startup_page.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          //minimumSize: Size(130.0, 43.0),
          shape: const StadiumBorder(),
          //onPrimary: Colors.white,
          //primary: Colors.amber,
        )),
      ),
      //home: SignUpPage(),
      //home: SignInPage(),
      //home: StartUpPage(),
      //home: ForgetPasswordPage(),
      home: const MainScreen(),
      //home: HomeScreen(),
    );
  }
}
