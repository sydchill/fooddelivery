// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fooddelivery/constants.dart';

import 'cards.dart';
import 'cashback.dart';
import 'home.dart';
import 'transaction.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectIndex = 0;

  final List<Widget> _pages = [Home(), Cashback(), Cards(), Transaction()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
        ),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: _pages.elementAt(_selectIndex)),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[400],
        fixedColor: primaryColor,
        selectedLabelStyle: TextStyle(color: Colors.blue),
        iconSize: 24,
        backgroundColor: primaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_outlined,
              ),
              label: 'cashback'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card_outlined,
              ),
              label: 'card'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.import_export_outlined,
              ),
              label: 'transaction')
        ],
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
      ),
    );
  }
}
