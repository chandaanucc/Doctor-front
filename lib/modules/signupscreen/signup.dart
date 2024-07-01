import 'package:flutter/material.dart';
import 'package:doctor_ui_screens/theme/app_color.dart'; // Import your custom colors

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set background color of scaffold
      body: Stack(
        children: [
          // Background image covering the entire screen
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.contain,
            ),
          ),
          // Content centered in the scaffold
          Padding(
            padding: const EdgeInsets.only(
              top: 50
            ),
            child: Center(
              widthFactor: 30,
              child: Column(
              
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Your image or other widgets here
                  Image.asset('assets/images/hi.png'),
                  SizedBox(height: 50), // Spacer between image and container
                  // Centered container
                  Container(
                    width: 290,
                    height: 435,
                    decoration: BoxDecoration(
                      color: AppColors.accentColor, // Use your defined accent color
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
