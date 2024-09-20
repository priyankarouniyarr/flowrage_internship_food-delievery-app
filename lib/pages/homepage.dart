import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants/constants.dart';
import 'package:fooddeliveryapp/pages/appbarscreen.dart';
import 'package:fooddeliveryapp/pages/sidebar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Sidebar(),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 172, 22, 1),
          iconTheme: const IconThemeData(
            color: Colors.white,
            size: 30,
          ),
          title: Appbar(),
        ),
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            
            Positioned(
              top: 0,
              child: Image.network(
                'https://img.freepik.com/free-photo/top-view-pepperoni-pizza-with-mushroom-sausages-bell-pepper-olive-corn-black-wooden_141793-2158.jpg',
                width: screenWidth, 
                height: screenHeight * 0.3, //30% of the screen height
                fit: BoxFit.cover,
              ),
            ),
            
            Positioned(
              top: screenHeight * 0.25, 
              left: screenWidth * 0.08, 
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[200],
                child: Image.asset(
                  'images/pizza1.jpg',
                  width: screenWidth * 0.2,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            
          ],
          
        ),
      ),
    );
  }
}
