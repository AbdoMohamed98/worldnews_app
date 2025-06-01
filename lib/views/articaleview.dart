import 'package:flutter/material.dart';

class Articaleview extends StatelessWidget {
  const Articaleview ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              'assets/images/people-collaborating-with-tech- (1) 1.png',
              fit: BoxFit.cover,
            ),
          ),

          
          Positioned(
            top: 250, 
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apple Unveils Revolutionary AI Features',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Abdallah Yassein · Apr 12, 2023',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, '
                    'vitae scelerisque enim ligula venenatis dolor...',
                    style: TextStyle(fontSize: 14, height: 1.5),
                  ),
                 
                ],
              ),
            ),
          ),

          
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: BackButton(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
