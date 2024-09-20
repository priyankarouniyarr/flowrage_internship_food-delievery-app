import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants/constants.dart'; 

class Sidebar extends StatelessWidget {
  Sidebar({super.key});

  // A List for sidebar item names
  final List<String> sidebarItems = [
    'Deals',
    'Chicken',
    'Pizza',
    'Salad',
    'Sauce',
    'Drinks'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 300,
        child: Drawer(
          backgroundColor:Colors.white,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: Container(
            
            margin: EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 25),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromRGBO(217, 217, 217,1),
                    child:Image.asset("images/logo/icons.png",height:200),
                  ),
                ),
                SizedBox(height: 35),
                
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      // Dynamically created ListTiles
                      ...sidebarItems.map((item) {
                        return Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.symmetric(horizontal: 0), // Remove extra padding
                              title: Text(
                                item,
                                style: ksidebarstyle, // Name from the list
                              ),
                            ),
                            Divider(
                              indent: 0, // Align divider with the ListTile
                              endIndent: 0,
                            ),
                          ],
                        );
                      }).toList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
