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

Widget restaurants(String distance, name, rating, image) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              height: 100,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  distance,
                  style: TextStyle(color: Colors.black54),
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.orangeAccent,
                    ),
                    Text(
                      rating,
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
