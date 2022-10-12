// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fooddelivery/components.dart';
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
                            border: Border.all(color: Colors.black26)),
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
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search_outlined),
                  hintText: 'Search foods, snacks, etc ...'),
            ),
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ramadhan Sale!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Free shopping for all merchant',
                          style: TextStyle(color: Colors.white60, fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '60%',
                          style: TextStyle(
                              color: Color(0xfffde34b),
                              fontSize: 50,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Aug 02- Sep 02, 2022',
                          style: TextStyle(color: Colors.white60, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Image(
                      height: 170,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/image2.jpg'),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              foodTypeBox(primaryColor, Color.fromARGB(255, 249, 227, 215),
                  Icons.sell, "Voucher"),
              foodTypeBox(Colors.blue[400]!, Color.fromARGB(255, 211, 235, 253),
                  Icons.icecream, "Dessert"),
              foodTypeBox(
                  Color.fromARGB(255, 253, 195, 3),
                  Color.fromARGB(255, 252, 252, 190),
                  Icons.local_pizza,
                  "Fast food"),
              foodTypeBox(Colors.green, Colors.green[100]!, Icons.icecream,
                  "Diet food"),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
