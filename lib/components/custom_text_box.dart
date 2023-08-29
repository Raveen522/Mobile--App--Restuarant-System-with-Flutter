import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  final labelText;
  final suffixIcon;
  final hintText;
  const CustomTextBox(
      {Key? key, this.labelText, this.suffixIcon, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            label: Text(
              labelText,
              style: const TextStyle(fontSize: 18.0),
            ),
            hintText: hintText,
            labelStyle: const TextStyle(color: Colors.white),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            suffixIcon: suffixIcon
            // suffixIcon: IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.edit,
            //       color: Colors.white,
            //     ))
            ));
  }
}
