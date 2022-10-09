// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fooddelivery/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> locations = [
    'Jhokan Bagh, Jhansi',
    'Tirumala, Tirupati',
    'Margonda Raya Selat...'
  ];

  String? _selectedLocation = 'Margonda Raya Selat...';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 35, 25, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    constraints: BoxConstraints(maxHeight: 45, maxWidth: 240),
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                      isExpanded: true,
                      value: _selectedLocation,
                      items: locations.map(
                        (String items) {
                          return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ));
                        },
                      ).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          _selectedLocation = value;
                        });
                      },
                    )),
                  )
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.black)),
                        child: Icon(
                          Icons.shopping_basket,
                          size: 20,
                        ),
                      ),
                      Positioned(
                        left: 27,
                        right: 0,
                        top: 0,
                        bottom: 27,
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image1.jpg'),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
