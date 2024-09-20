
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Expanded(
          child: Center(
            child: Image.asset(
              'images/logonames.png',
              height: 60,
              fit: BoxFit.contain,
            ),
          ),
        ),
             const SizedBox(width: 20),
        Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.location_on_outlined,
                color: Color.fromRGBO(240, 238, 234, 1),
                size: 30,
              ),
              onPressed: () {
                // Action for location icon
              },
            ),
            const SizedBox(width: 5),
            InkWell(
              child: Image.asset(
                "images/shopping.png",
                height: 40,
                width: 30, 
                fit: BoxFit.cover,
              ),
              onTap: () {
                // Action for cart icon
              },
            ),
          ],
        ),
      ],
    );
  }
}
