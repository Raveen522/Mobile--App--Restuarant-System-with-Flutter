import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final inputTitle;
  final text;
  final onPressed;
  const CustomInputField({Key? key, this.inputTitle, this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Text(
          "$inputTitle",
          style: const TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0, left: 10.0),
          child: Text(
            "$text",
            style: const TextStyle(fontSize: 22.0, color: Colors.white),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40.0),
          child: const Divider(
            color: Colors.white,
            thickness: 1.5,
          ),
        ),
      ]),
    );
  }
}
