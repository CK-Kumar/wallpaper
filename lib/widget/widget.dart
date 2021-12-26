import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget BrandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      Text(
        'Wallpaper',
        style: TextStyle(color: Colors.black),
      ),
      Text(
        'Hub',
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}
