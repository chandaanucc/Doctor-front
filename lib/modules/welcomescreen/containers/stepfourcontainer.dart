// ignore_for_file: library_private_types_in_public_api

import 'package:ai_doc_app/modules/signupscreen/signup.dart';
import 'package:ai_doc_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class StepFourContainer extends StatefulWidget {
  const StepFourContainer({super.key});

  @override
  _StepFourContainerState createState() => _StepFourContainerState();
}

class _StepFourContainerState extends State<StepFourContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 290,
        height: 485,
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Do you have any existing\nMedication?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Quick Search',
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'illustrative representation\nbased on the data\nSimilar to previous screen',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Handle Calculate Risk action
                      },
                      child: const Text(
                        'Calculate Risk',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen())); 
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Button color
                      ),
                      child: const Row(
                        children: [
                          Text('Continue', style: TextStyle(color: AppColors.accentColor)),
                          Icon(Icons.arrow_right, color: AppColors.accentColor),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'OR',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Handle Examine Later action
                  },
                  child: const Text(
                    'Examine Later',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
