import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/sidebar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Sidebar(),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 172, 22, 1),
           // AppBar background color
          actions: [
            // Logo Image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                'images/logoname.jpeg',
                
                 // Ensure the image path is correct
                height: 40, 
                
                // Adjust height as needed
                width: 40,
                
                 // Adjust width as needed
                fit: BoxFit.contain,
                
              ),
            ),
                // Location Icon

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(
                   Icons.location_on_outlined,
                   color: Color.fromRGBO(225, 174, 24, 1),
                   // Color for location icon
                
                ),
                onPressed: () {
                   // Action for location icon
                },
              ),
            ),

            
           
            
            // Add to Cart Icon

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart, 
                  color: Colors.white, 
              
                
                  // Color for cart icon

                ),
                onPressed: () {

                  // Action for cart icon
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
