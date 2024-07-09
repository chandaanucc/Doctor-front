// ignore_for_file: library_private_types_in_public_api

import 'package:ai_doc_app/modules/bottombar/bottombar.dart';
import 'package:ai_doc_app/modules/welcomescreen/containers/stepfivecontainer.dart';
import 'package:ai_doc_app/modules/welcomescreen/welcomefive.dart';
import 'package:flutter/material.dart';
import '../../../theme/app_color.dart';

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
      height: 440, // Reduced the height of the container
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Step 4 / 5',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Do you have any existing\nMedication?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 250,
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Quick Search',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Illustrative representation\nbased on the data\n\nSimilar to previous screen',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(height: 40), // Increased the spacing before the buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Calculate Risk action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize: const Size(120, 35), // Set a fixed size
                  ),
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
                        builder: (context) => const WelcomeScreenFive(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentColor,
                    side: const BorderSide(color: Colors.white, width: 2.0),
                    minimumSize: const Size(120, 35), // Set a fixed size
                  ),
                  child: const Row(
                    children: [
                      Text('Continue', style: TextStyle(color: Colors.white)),
                      Icon(Icons.arrow_right, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
