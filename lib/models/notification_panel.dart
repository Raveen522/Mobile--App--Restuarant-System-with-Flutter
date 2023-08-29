import 'package:flutter/material.dart';

import '../components/glass_morphism.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List items = ["0", "1", "2", "3", "4"];
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: 800.0,
      width: 300.0,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      border_radius: 15.0,
      border_width: 1.5,
      border_color: Colors.white,
      blur_value: 10.0,
      background_begin_color: const Color.fromARGB(81, 255, 255, 255),
      background_end_color: const Color.fromARGB(41, 255, 255, 255),
      child: Column(children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Notifications",
              style: TextStyle(fontSize: 24.0, color: Colors.white),
            )
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 630,
          width: double.infinity,
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return Container(
                  margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Dismissible(
                    key: Key(item),
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                    child: const NotificationItem(),
                  ),
                );
              }),
        ),
      ]),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 350.0,
      padding: const EdgeInsets.only(top: 5.0, left: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(204, 255, 255, 255),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                "Special offer for pan pizza",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              )
            ],
          ),
          Row(
            children: [
              Image.asset(
                  width: 55.0, height: 55.0, "assets/images/items/Pizza.png"),
              const SizedBox(
                width: 280.0,
                child: Text("Special limited offer for pan pizza, get 15% off.",
                    style: TextStyle(color: Colors.white), maxLines: 2),
              )
            ],
          )
        ],
      ),
    );
  }
}
