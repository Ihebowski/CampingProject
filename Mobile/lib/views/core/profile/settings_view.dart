import 'package:flutter/material.dart';
import 'package:camping_app/views/constants/colors.dart';

Widget settingsView() {
  return Container(
    height: double.maxFinite*0.5,
    width: double.maxFinite,
    decoration: const BoxDecoration(
      color: appBackgroundColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20.0),
        const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 22.0,
            color: text1Color,
          ),
        ),
        const SizedBox(height: 30.0),
        Text("data"),
      ],
    ),
  );
}
