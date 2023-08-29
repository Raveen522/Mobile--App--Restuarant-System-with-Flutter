
import 'package:e_commerce_app/components/glass_morphism.dart';
import 'package:flutter/material.dart';
import 'account_settings.dart';
import 'cart_screen.dart';
import 'fave_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List pagelist = [
    const FavoriteScreen(),
    const HomeScreen(),
    const CartScreen(),
    // CheckoutPage(),
    // CardDetails(),
    //PaymentSuccess()
  ];
  late int _selectedindex = 1;
  late int selectedpage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: pagelist[_selectedindex],
      drawer: CustomDrawer(),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 15.0),
        child: GlassContainer(
          height: 70.0,
          padding: const EdgeInsets.only(top: 7.5),
          border_radius: 50.0,
          border_width: 2.0,
          border_color: Colors.white,
          blur_value: 20.0,
          background_begin_color: const Color.fromARGB(62, 255, 255, 255),
          background_end_color: const Color.fromARGB(41, 255, 255, 255),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationItem(Icons.favorite_outline, 0),
              NavigationItem(Icons.home_outlined, 1),
              NavigationItem(Icons.shopping_cart_outlined, 2)
            ],
          ),
        ),
      ),
    );
  }

  GlassContainer CustomDrawer() {
    return GlassContainer(
      //height: 70.0,
      width: 350.0,
      padding: const EdgeInsets.only(top: 7.5),
      border_radius: 20.0,
      border_width: 1.0,
      border_color: const Color.fromARGB(111, 255, 255, 255),
      blur_value: 10.0,
      background_begin_color: const Color.fromARGB(62, 255, 255, 255),
      background_end_color: const Color.fromARGB(41, 255, 255, 255),
      child: Column(
        children: [
          SizedBox(
            height: 250.0,
            child: Column(
              children: [
                const SizedBox(
                  height: 35.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: const Color.fromARGB(74, 255, 255, 255),
                      width: 6.0,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/items/avatar.jpg"),
                    radius: 60.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  "Raveen Malitha",
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
                const Text(
                  "raveenmalitha@gmail.com",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
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
          DrawerList(1, "Account", Icons.account_circle_outlined,
              selectedpage == 1 ? true : false),
          DrawerList(2, "My orders", Icons.shopping_bag_outlined,
              selectedpage == 2 ? true : false),
          DrawerList(3, "Delivery location", Icons.location_on_outlined,
              selectedpage == 3 ? true : false),
          DrawerList(4, "Theme", Icons.edit_road_outlined,
              selectedpage == 4 ? true : false),
          DrawerList(5, "Report & feedback", Icons.report_outlined,
              selectedpage == 5 ? true : false),
          DrawerList(
              6, "About", Icons.help_outline, selectedpage == 6 ? true : false),
          DrawerList(7, "Exit", Icons.exit_to_app_outlined,
              selectedpage == 7 ? true : false),
          const SizedBox(
            height: 50.0,
          ),
          const Text(
            "Developed by Raveen",
            style: TextStyle(
                fontSize: 15.0, color: Color.fromARGB(116, 255, 255, 255)),
          )
        ],
      ),
    );
  }

  InkWell DrawerList(int index, String title, IconData icon, bool isSelected) {
    return InkWell(
      onTap: () {
        print("$index");
        setState(() {
          selectedpage = index;
          if (index == 1) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const AccountSettings()));
            // showDialog(
            //   context: context,
            //   builder: (context) => AccountSettings(),
            // );
          }
        });
      },
      child: Container(
        //margin: EdgeInsets.only(bottom: 10.0),
        color: selectedpage == index
            ? const Color.fromARGB(32, 255, 255, 255)
            : Colors.transparent,
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 30.0,
                ),
                Icon(
                    color: const Color.fromARGB(216, 255, 255, 255),
                    size: 40.0,
                    icon),
                const SizedBox(
                  width: 25.0,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 22.0, color: Colors.white),
                )
              ],
            ),
            const Divider(
                color: Color.fromARGB(111, 255, 255, 255),
                height: 5.0,
                thickness: 1.5,
                endIndent: 25.0,
                indent: 25.0),
          ],
        ),
      ),
    );
  }

  AnimatedContainer NavigationItem(IconData? icon, int index) {
    return AnimatedContainer(
      height: 55.0,
      width: 55.0,
      decoration: index == _selectedindex
          ? BoxDecoration(
              color: const Color.fromARGB(255, 255, 202, 0),
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: Colors.white,
                width: 1.5,
              ),
            )
          : const BoxDecoration(),
      duration: const Duration(milliseconds: 250),
      child: IconButton(
        onPressed: () {
          setState(() {
            _selectedindex = index;
          });
        },
        iconSize: 35.0,
        icon: Icon(icon),
        color: index == _selectedindex ? Colors.black : Colors.white,
      ),
    );
  }
}

// InkWell DrawerList(int index, String title, IconData icon, bool isSelected) {
//   return ;
// }
