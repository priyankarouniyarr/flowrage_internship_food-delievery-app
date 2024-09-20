import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/location.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    
   // Delay of 5 seconds 
   Future.delayed(Duration(seconds: 5), () {
     Navigator.pushReplacement(
       context,
       MaterialPageRoute(builder: (context) => Screen2()),
     );
   });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 244, 224, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
               Image.asset('images/logo/logo.png', width:MediaQuery.of(context).size.width/2.5,
                        fit: BoxFit.contain,),
                        SizedBox(
                          height: 15,
                        ),
              Text(
                'Lieferservice',
                style: TextStyle(
                  color: Color.fromRGBO(255, 172, 22, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
                textAlign: TextAlign.center, 
              ),
              Text(
                'Magdeburg',
                style: TextStyle(
                  color: Color.fromRGBO(255, 172, 22, 1),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                ),
                textAlign: TextAlign.center, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}

