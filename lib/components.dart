// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Column foodTypeBox(
    Color color, Color boxColor, IconData icon, String foodType) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: boxColor, borderRadius: BorderRadius.circular(15)),
        child: Icon(
          color: color,
          icon,
          size: 50,
        ),
      ),
      SizedBox(height: 5),
      Text(
        foodType,
        style: TextStyle(fontWeight: FontWeight.w500),
      )
    ],
  );
}
