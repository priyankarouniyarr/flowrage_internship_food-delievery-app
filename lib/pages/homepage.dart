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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
                
              Container(
                height: screenHeight * 0.39, // Increased the height for better visibility
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Image.asset(
                        'images/pizza1.png',
                        width: screenWidth,
                        height: screenHeight * 0.3, // 30% of the screen height for the background image
                        fit: BoxFit.cover,
                      ),
                    ),
                    
                    Positioned(
                      top: screenHeight * 0.25,  
                      left: screenWidth * 0.08,  
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[100],
                        child: Image.asset(
                          'images/logo/logo.png',
                          width: screenWidth * 0.2,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Center(
                child: Text(
                  "Willkommen im besten ",//"Welcome to the best pizza place in town!"
                  style: kdescribestyle.copyWith(
                    
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Pizzalokal der Stadt! ",
                  style: kdescribestyle,
                ),
              ),
            SizedBox(
              height:10,
            ),
              Container(
                margin:EdgeInsets.only(right:30,left:30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Color.fromRGBO(214,213,212, 1),
                    width: 2.0,
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(
                      Icons.search,
                      size:25,
                      color: Color.fromRGBO(214,213,212, 1),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
            child: Text(
              "Suchen Sie nach Ihrer nächsten herzhaften Mahlzeit!",//Are you looking for your next hearty meal!
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(214, 213, 212, 1),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1, 
            ),
          ),
                  ],),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
