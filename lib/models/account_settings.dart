import 'package:e_commerce_app/components/glass_morphism.dart';
import 'package:flutter/material.dart';

import '../components/custom_alert_dialog.dart';
import '../components/custom_input_field.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  String _gender = "Male";
  String _userName = "Raveen Malitha";
  final String _userTP = "+940712345678";
  final String _userEmail = "raveen@gmail.com";
  DateTime _birthday = DateTime(2022, 05, 22);
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
        child: GlassContainer(
          border_radius: 0.0,
          border_width: 0.0,
          border_color: Colors.white,
          blur_value: 10.0,
          background_begin_color: const Color.fromARGB(81, 255, 255, 255),
          background_end_color: const Color.fromARGB(41, 255, 255, 255),
          child: Column(children: [
            Container(
              height: 230.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(204, 255, 255, 255),
                  width: 1.5,
                ),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 300,
                        child: Text(
                          "Profile",
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(
                              color: const Color.fromARGB(74, 255, 255, 255),
                              width: 5.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/items/avatar.jpg"),
                            radius: 50.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 75.0, left: 70.0),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                            color: Colors.white,
                          ),
                        )
                      ]),
                      const SizedBox(
                        width: 15.0,
                      ),
                      const Column(
                        children: [
                          Text(
                            "Raveen Malitha",
                            style:
                                TextStyle(fontSize: 26.0, color: Colors.white),
                          ),
                          Text(
                            "raveenmalitha@gmail.com",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Favorite: 06",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                      Text(
                        "Orders: 08",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  )
                ],
              ),
            ),
            Container(
              height: 480.0,
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 1.0,
                  ),
                  CustomInputField(
                    inputTitle: "Name :",
                    text: _userName,
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (context) => StatefulBuilder(
                              builder: (context, setState) => CustomAlertDialog(
                                    hieght: 150.0,
                                    width: 200.0,
                                    child: Column(
                                      children: [
                                        const Text("Chanege name",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white)),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                top: 25.0, bottom: 5.0),
                                            height: 20.0,
                                            child: const TextField(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0),
                                            )),
                                        TextButton(
                                            onPressed: () {
                                              _userName = "123";
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Ok",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white),
                                            ))
                                      ],
                                    ),
                                  )));
                      setState(() {});
                    },
                  ),
                  CustomInputField(
                    inputTitle: "Phone number :",
                    text: _userTP,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => StatefulBuilder(
                              builder: (context, setState) => CustomAlertDialog(
                                    hieght: 150.0,
                                    width: 220.0,
                                    child: Column(
                                      children: [
                                        const Text("Chanege phone number",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white)),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                top: 25.0, bottom: 5.0),
                                            height: 20.0,
                                            child: const TextField(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0),
                                            )),
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Ok",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white),
                                            ))
                                      ],
                                    ),
                                  )));
                    },
                  ),
                  CustomInputField(
                    inputTitle: "Email :",
                    text: _userEmail,
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => StatefulBuilder(
                              builder: (context, setState) => CustomAlertDialog(
                                    hieght: 150.0,
                                    width: 200.0,
                                    child: Column(
                                      children: [
                                        const Text("Chanege email",
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                color: Colors.white)),
                                        Container(
                                            margin: const EdgeInsets.only(
                                                top: 25.0, bottom: 5.0),
                                            height: 20.0,
                                            child: const TextField(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0),
                                            )),
                                        TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Ok",
                                              style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white),
                                            ))
                                      ],
                                    ),
                                  )));
                    },
                  ),
                  CustomInputField(
                    inputTitle: "Gender :",
                    text: " $_gender",
                    onPressed: () async {
                      await showDialog(
                          context: context,
                          builder: (context) => StatefulBuilder(
                                builder: (context, setState) =>
                                    CustomAlertDialog(
                                  hieght: 150.0,
                                  width: 150.0,
                                  child: Column(children: [
                                    const Text(
                                      "Gender",
                                      style: TextStyle(
                                          fontSize: 22.0, color: Colors.white),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Radio(
                                          value: 'Male',
                                          groupValue: _gender,
                                          onChanged: (value) {
                                            setState(() {
                                              _gender = "$value";
                                            });
                                          },
                                        ),
                                        const Text(
                                          "Male",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Radio(
                                          value: 'Female',
                                          groupValue: _gender,
                                          onChanged: (value) {
                                            setState(() {
                                              _gender = "$value";
                                            });
                                          },
                                        ),
                                        const Text(
                                          "Female",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          "Ok",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white),
                                        ))
                                  ]),
                                ),
                              ));
                      setState(() {});
                    },
                  ),
                  CustomInputField(
                    inputTitle: "Birthday :",
                    text:
                        "${_birthday.day}/${_birthday.month}/${_birthday.year}",
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: _birthday,
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100));

                      if (newDate == null) return;
                      setState(() {
                        _birthday = newDate;
                      });
                    },
                  ),
                  //CustomTextBox(labelText: "Name"),
                  //CustomTextBox(labelText: "Phone number"),
                  //CustomTextBox(labelText: "Email"),

                  // CustomTextBox(labelText: "Birthday"),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    height: 55.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(204, 255, 255, 255),
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Reset",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            )),
                        const VerticalDivider(
                          thickness: 1.5,
                          color: Colors.grey,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            )),
                        const VerticalDivider(
                          thickness: 1.5,
                          color: Colors.grey,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
