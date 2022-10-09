// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/main_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
      },
    ),
  );
}
